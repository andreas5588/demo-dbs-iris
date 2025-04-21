Class DataType.Utils
{

ClassMethod DamageMetadataViaGlobalWrites(namespace As %String, tblName As %String) As %Status
{
	set sc = $$$OK
	try 
	{
		// now change data via global to corrupt the meta data
		ZN namespace
		Set clsName = ##class(%SQL.Manager.API).FindClassName(tblName)
		W "ClassName for table "_tblName_" = "_clsName

		Set theClass = ##class(%Dictionary.ClassDefinition).%OpenId(clsName)
		If $SYSTEM.Status.IsError(theClass)  
		{
			W !,"ClassDefinition NOT successful"
			Do $system.Status.DecomposeStatus(%objlasterror,.Err)
			Write !, Err(Err)
		}
		ELSE
		{
			W !,"Found ClassDefinition successful"

			Set allStorages = theClass.StoragesGet()
			If $SYSTEM.Status.IsError(allStorages)  
			{
				W !,"StoragesGet NOT successful"
				Do $system.Status.DecomposeStatus(%objlasterror,.Err)
				Write !, Err(Err)
			}
			ELSE
			{
				W !,"StoragesGet successful"
				Set theStorage = allStorages.GetAt(1)
				Set theStorageGlb = theStorage.DataLocation
				W !,"DataLocation = "_theStorageGlb

				Set glbKey=""
				for 
				{
					Set glbKey = $order(@theStorageGlb@(glbKey))
					Quit:glbKey=""
					//Write !,"glbKey = "_glbKey
					Set theRow = $get(@theStorageGlb@(glbKey))
					
					Set pk = $list(theRow,1)
					
					//Write " / Pk = "_pk

					If (pk="101") || (pk="180") || (pk="181") || (pk="182") || (pk="183") || (pk="184") || (pk="185")
					{
						W !,"Corrupting DOB col on "_tblName_" with PK (Colname ID external!) = "_pk_" Value is no longer a valid date"
						SET $LIST( @theStorageGlb@(glbKey),4)=$LIST(theRow,4)_"<Ruined>" // damage the DOB col
					}
					ElseIf pk="110"
					{
						W !,"Corrupting NAME col on "_tblName_" with PK (Colname ID external!) = "_pk_" Value is longer than 50 chars"
						SET $LIST( @theStorageGlb@(glbKey),6)="10XxXxXxXx20XxXxXxXx30XxXxXxXx40XxXxXxXx50XxXxXxXx60XxXxXxXx" // damage the NAME col
					}
					ElseIf pk="120"
					{
						W !,"Corrupting AGE col on "_tblName_" with PK (Colname ID external!) = "_pk_" Value is now a string, should be a INT"
						SET $LIST( @theStorageGlb@(glbKey),2)="NoINT" // damage the AGE col
					}
					ElseIf pk="199"
					{
						W !,"Corrupting SSN col on "_tblName_" with PK (Colname ID external!) = "_pk_" Value is now NULL, should be NOT NULL"
						SET $LIST( @theStorageGlb@(glbKey),9)="" // damage the SSN col
					}
				}
			}
		}
    } catch (ex) 
	{
        set sc = ex.AsStatus()
        write !,"Unexpected error: ",$system.Status.GetOneErrorText(sc)
    }

	quit sc
}
}