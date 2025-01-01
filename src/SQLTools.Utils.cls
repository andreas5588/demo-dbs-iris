Class SQLTools.Utils
{
/// This method original from the repo https://github.com/bdeboe/isc-adventureworks/
/// Is was required to load the ddl files with this methdo cause the $SYSTEM.SQL.Schema.ImportDDL method doesn't support the new LOAD DATA command
/// 
ClassMethod RunDDL(file As %String, ByRef replace As %String, ignoreErrors As %Boolean = 0, verbose As %Boolean = 1) As %Status
{
    set sc = $$$OK
    try {
        set sep = $s($$$isWINDOWS:"\",1:"/")
        set statementSep = "GO"

        write:verbose !,"Running DDL statements from file '",$piece(file,sep,*),"'"
		write:verbose !,"Statement separator = "_statementSep

        set stream = ##class(%Stream.FileCharacter).%New()
        set sc = stream.LinkToFile(file)
		write:verbose !,"Error text: ",$system.Status.GetOneErrorText(sc)
        quit:$$$ISERR(sc)

		set sql = ""

		write:verbose !,"start reading..."
        while 'stream.AtEnd {
            set line = $zstrip(stream.ReadLine(),">WC")
			//write:verbose !,"line=",line,!
            continue:line=""
            continue:$e(line,1,2)="--" // skip comment lines

			// somewhat blunt comment section skipping
			if $zstrip(line,"<WC") = "/*" {
				while 'stream.AtEnd {
					set line = $zstrip(stream.ReadLine(),"<>WC")
					quit:line="*/"
				}
				continue
			}

			// somewhat blunt statement termination
			if $zstrip(line,"<WC") = statementSep {

				// replace constants
				set str = ""
				for {
					set str = $order(replace(str),1,rep)
					quit:str=""
					set sql = $replace(sql,"${"_str_"}",rep)
				}

				set sql = $zstrip(sql,"<>WC"), ts = $zh

				write:verbose !!,"  Executing statement:",!,sql
				set rs = ##class(%SQL.Statement).%ExecDirect(,sql)
				set sql = ""
				if rs.%SQLCODE {
					write:verbose !,"    FAILED: ",rs.%Message
					if 'ignoreErrors {
						set sc = $$$ERROR($$$GeneralError, "Error running statement: "_rs.%Message)
						quit
					}
				} else {
					write:verbose !,"    SUCCESS (",$normalize($zh-ts,3),"s)"
					write:verbose&&rs.%ROWCOUNT " - ",rs.%ROWCOUNT," rows affected"
				}
			} else {
				set sql = sql_$c(13,10)_line
			}

        }

		if $zstrip(sql,"<>WC")'="" {
			write:verbose !!,"leftover statement not executed: ",!,sql
		}
        
    } catch (ex) {
        set sc = ex.AsStatus()
        write:verbose !,"Unexpected error: ",$system.Status.GetOneErrorText(sc)
    }
	write:verbose !
    quit sc
}

}