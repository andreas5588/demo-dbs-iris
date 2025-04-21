USE DATABASE DataType_SAMPLE
GO
CREATE TABLE SQLUSER.Employee
(
   ID              BIGINT          NOT NULL AUTO_INCREMENT,
   Age             INTEGER,
   Company         BIGINT,
   DOB             DATE,
   FavoriteColors  VARCHAR(4096),
   Name            VARCHAR(50)     NOT NULL,
   Notes           LONGVARCHAR,
   Picture         LONGVARBINARY,
   SSN             VARCHAR(50)     NOT NULL,
   Salary          INTEGER,
   Spouse          BIGINT,
   Title           VARCHAR(50),
   Home_City       VARCHAR(80),
   Home_State      VARCHAR(2),
   Home_Street     VARCHAR(80),
   Home_Zip        VARCHAR(5),
   Office_City     VARCHAR(80),
   Office_State    VARCHAR(2),
   Office_Street   VARCHAR(80),
   Office_Zip      VARCHAR(5)
)
GO
ALTER TABLE SQLUSER.Employee
  ADD PRIMARY KEY (ID)
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (101,77,17,{d '1948-03-06'},'White,Green','Joyce,Barb A.','Barb used to work at PicoTech Media Inc. as a(n) Global Marketing Manager','588-86-4878',28934,52,'Assistant Marketing Manager','Tampa','VT','5121 Elm Place','39669','Youngstown','MD','241 Elm Place','93402')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (102,48,5,{d '1976-10-19'},'Purple','Vanzetti,Elvira A.','Elvira used to work at MetaDyne Gmbh. as a(n) Global Research Asst.','547-81-6518',66621,26,'Accountant','Elmhurst','MO','3667 Oak Drive','29817','Chicago','AZ','9757 Oak Court','26341')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (103,96,3,{d '1928-11-22'},'Purple,Yellow','Humby,Pam L.','Pam used to work at GlobaData.com as a(n) Associate Engineer','547-45-7164',70617,55,'Global Engineer','Elmhurst','OH','8663 Franklin Place','61393','Newton','NJ','9756 Second Blvd','54720')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (104,52,10,{d '1972-11-19'},'Green,Red','Iacobelli,Linda I.','Linda used to work at CompuDynamics Corp. as a(n) Associate Sales Rep.','954-49-9227',50157,73,'Associate Product Manager','Youngstown','WV','7120 Second Court','67380','Miami','VT','534 Clinton Blvd','41956')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (105,22,5,{d '2003-02-01'},NULL,'Vivaldi,Edward Y.','Edward used to work at Securimo Inc. as a(n) Laboratory Product Manager','586-44-7375',18450,72,'Associate Sales Rep.','Queensbury','TX','5825 Maple Street','14086','Albany','SD','7667 Clinton Blvd','83546')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (106,45,1,{d '1980-03-05'},'Purple,Black','Adams,Edgar L.','Edgar used to work at Teramo Inc. as a(n) Global Hygienist','407-55-6410',75231,63,'Assistant Developer','Zanesville','UT','9920 First Place','28659','Washington','IN','3544 First Avenue','86132')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (107,17,7,{d '2007-11-05'},'Orange','Ipsen,Yan E.','Yan used to work at CompuData Group Ltd. as a(n) Assistant Director','569-79-2618',34571,85,'Assistant Developer','Vail','WI','6632 Oak Drive','15336','Tampa','MS','4087 Ash Avenue','34631')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (108,89,8,{d '1936-01-18'},'White,Black','Nagel,Emma Q.','Emma used to work at CompuMatix Corp. as a(n) Accountant','560-91-2359',35963,50,'Laboratory Product Specialist','Zanesville','VT','5554 Clinton Blvd','15921','Larchmont','ME','9557 Main Blvd','34968')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (109,82,17,{d '1942-09-13'},NULL,'Chadbourne,Wolfgang K.','Wolfgang used to work at MetaDynamics LLC. as a(n) Laboratory Resources Director','132-17-6026',50380,42,'Senior Marketing Manager','Queensbury','MI','4248 Madison Street','62445','Xavier','MD','6067 Ash Place','43987')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (110,22,9,{d '2002-07-26'},'Orange','Nagel,Sophia Q.','Sophia used to work at SynerData Group Ltd. as a(n) Resources Director','961-43-3855',71673,41,'Research Asst.','Washington','NE','1458 Maple Avenue','76265','Hialeah','VA','6453 Clinton Avenue','95799')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (111,81,1,{d '1943-09-23'},'Green','Rogers,Paul Q.',NULL,'557-81-1086',87892,44,'Laboratory Director','Albany','WI','8000 Oak Avenue','40149','Jackson','MT','5411 Madison Avenue','24136')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (112,52,3,{d '1972-12-26'},'Orange','Townsend,Christen P.',NULL,'585-62-5912',56728,61,'Senior Research Asst.','Xavier','CT','9113 Elm Street','72982','Hialeah','MI','6177 Franklin Avenue','34826')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (113,37,3,{d '1988-02-29'},'Blue','Vanzetti,Ted D.',NULL,'794-38-5669',44022,99,'Senior Product Manager','Newton','NY','5962 Madison Place','22053','Newton','DE','9829 Oak Drive','41920')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (114,4,18,{d '2020-09-22'},'Black,Blue','Xerxes,James F.',NULL,'457-72-7227',84154,44,'Associate Resources Director','Miami','WA','8092 Main Street','49093','Denver','CT','475 Maple Blvd','86130')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (115,41,15,{d '1983-06-19'},NULL,'Clinton,Barb M.',NULL,'849-58-6913',37140,56,'Associate Accountant','Fargo','AK','255 Elm Street','18095','Zanesville','NJ','7224 Oak Avenue','18869')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (116,6,17,{d '2018-07-26'},'Orange','Townsend,Diane H.',NULL,'851-58-1504',63924,85,'Executive Research Asst.','Jackson','VA','2538 First Street','53103','Hialeah','AK','5887 Maple Place','46677')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (117,93,5,{d '1931-05-25'},'Blue','Ott,Kristen I.',NULL,'171-96-2437',22737,37,'Global Support Engineer','Oak Creek','NE','6111 First Avenue','40336','Tampa','MI','8282 Franklin Place','65992')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (118,36,19,{d '1989-03-05'},'Purple,Black','Isaksen,Juanita E.',NULL,'321-19-7504',68075,87,'Laboratory Accountant','Oak Creek','CT','5410 Oak Street','20372','Zanesville','SC','8989 Elm Place','43892')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (119,72,17,{d '1953-02-21'},'Orange','Nathanson,Nataliya I.',NULL,'428-96-1287',49811,20,'Senior Accountant','Newton','SC','3381 Oak Place','64228','Newton','PA','7208 Second Blvd','61991')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (120,11,19,{d '2013-08-01'},'White,Purple','Li,George A.',NULL,'485-53-8979',17707,60,'Associate Sales Rep.','Elmhurst','WA','5323 Washington Street','54620','Vail','KS','641 Ash Street','38212')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (121,87,19,{d '1937-08-15'},NULL,'Ingrahm,William O.',NULL,'515-95-6053',37911,48,'Strategic Systems Engineer','Elmhurst','RI','2392 Main Place','27862','Pueblo','PA','8162 Maple Place','63539')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (122,67,5,{d '1958-02-14'},'Blue,Black','Houseman,Kim Q.',NULL,'463-22-9682',60160,58,'Associate Sales Rep.','Newton','CO','7465 Second Street','75972','Pueblo','MI','7823 Oak Court','50754')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (123,85,7,{d '1939-11-27'},'White','Lee,Wolfgang S.',NULL,'278-64-9311',98083,46,'Executive Hygienist','Boston','MI','7248 Clinton Avenue','20646','Xavier','CO','1298 Ash Place','45152')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (124,61,12,{d '1963-05-22'},'Orange,Orange','Thompson,Roberta P.',NULL,'116-48-4528',40042,35,'Associate Accountant','Xavier','KY','2315 Main Place','46461','Oak Creek','NY','7102 Second Court','67416')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (125,75,11,{d '1949-07-29'},'Green,Purple','Eisenstien,Mario N.',NULL,'679-15-8815',44521,64,'Assistant WebMaster','Chicago','UT','8456 Clinton Place','17103','Islip','OK','4073 Clinton Blvd','37165')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (126,63,2,{d '1961-05-31'},NULL,'Ironhorse,Bart P.',NULL,'497-61-3750',58261,41,'Marketing Manager','Washington','FL','8323 Washington Street','11246','Pueblo','MO','518 Maple Avenue','62226')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (127,75,20,{d '1949-07-13'},NULL,'Houseman,Imelda I.',NULL,'789-65-9930',22387,50,'Global Marketing Manager','Albany','CA','8236 Oak Avenue','38558','Zanesville','NE','6840 Washington Court','49397')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (128,8,16,{d '2016-11-15'},'Green','Minichillo,Ralph T.',NULL,'208-65-1435',9847,37,'Assistant Hygienist','Fargo','CT','4038 Oak Place','52183','St Louis','AK','5086 Oak Drive','90181')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (129,13,2,{d '2011-10-04'},'Purple','Xenia,Greta D.',NULL,'328-45-8799',40891,68,'Support Engineer','Tampa','IN','7673 Elm Place','40161','Washington','TX','9053 Main Street','57880')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (130,50,10,{d '1974-05-17'},'White','Lennon,Edward E.',NULL,'441-15-5091',9997,76,'Associate Developer','Albany','NM','7004 Maple Court','28237','Ukiah','NV','5030 Oak Blvd','71269')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (131,73,6,{d '1951-12-23'},'Red','Eno,Barbara Z.',NULL,'447-47-3642',88318,51,'Associate Accountant','Tampa','WY','9810 Oak Street','87286','Youngstown','GA','4986 Franklin Place','10607')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (132,30,20,{d '1994-05-09'},'Blue','Edwards,Elvira O.',NULL,'587-73-3667',90468,1,'Senior Accounts Rep.','Youngstown','NV','7800 Second Court','94890','Pueblo','GA','4129 Madison Avenue','21466')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (133,21,13,{d '2003-04-29'},'Green','Ott,Brian R.',NULL,'605-14-6470',98603,16,'Executive Hygienist','Reston','KS','5455 Oak Blvd','22446','Hialeah','NY','6883 Second Court','25228')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (134,12,13,{d '2012-11-10'},NULL,'Massias,Liza G.',NULL,'451-30-6640',59965,21,'Strategic Product Specialist','Oak Creek','RI','2047 Madison Drive','15659','Boston','IL','220 Elm Avenue','44669')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (135,15,3,{d '2009-12-03'},NULL,'Thompson,Thelma Q.',NULL,'304-95-3506',69467,72,'Laboratory Support Engineer','Jackson','KS','7184 Madison Avenue','97194','St Louis','KS','7319 Main Street','19807')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (136,62,1,{d '1962-04-19'},NULL,'Edwards,Edgar Q.',NULL,'612-72-1388',84937,34,'Senior Research Asst.','Miami','OH','5091 Oak Street','86455','Vail','TX','9208 Elm Street','82046')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (137,32,16,{d '1993-01-14'},'Blue,White','Allen,Maria Y.',NULL,'752-62-5266',59437,40,'Associate Technician','Fargo','KS','5827 Second Place','77178','Miami','NJ','5607 Oak Place','43902')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (138,87,18,{d '1937-12-06'},'Orange','Van De Griek,Stavros T.',NULL,'199-85-7345',28559,68,'Technician','Tampa','NY','2495 Maple Street','15545','Larchmont','MI','603 Madison Blvd','72252')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (139,15,20,{d '2010-03-30'},NULL,'Yang,Belinda E.',NULL,'991-10-4430',71331,80,'Assistant Product Specialist','Pueblo','HI','9406 Madison Place','43533','Chicago','ND','5150 Clinton Drive','70942')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (140,3,11,{d '2021-07-09'},NULL,'Gomez,Julie O.',NULL,'609-88-1754',44075,91,'Marketing Manager','Xavier','HI','8300 Second Place','92501','Queensbury','TX','2722 Clinton Court','74750')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (141,79,17,{d '1946-01-22'},'Blue,White','Jackson,Emilio H.',NULL,'290-87-5338',39991,1,'Executive Technician','Larchmont','NH','2927 Maple Court','25573','Fargo','IL','5864 First Court','12245')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (142,61,17,{d '1963-12-16'},'White,Orange','Miller,Pam P.',NULL,'641-82-2546',24330,33,'Associate Product Specialist','Newton','MN','746 First Street','31307','Islip','IN','6880 Second Avenue','41969')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (143,32,17,{d '1992-08-18'},NULL,'Xavier,Dick W.',NULL,'234-86-7238',76133,4,'Executive Research Asst.','Newton','CT','8255 Main Street','40570','Tampa','VT','1665 Madison Court','84806')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (144,37,8,{d '1987-10-21'},'Orange,Yellow','Bush,Samantha L.',NULL,'224-41-3210',81883,89,'Assistant Administrator','Washington','MD','856 Ash Court','88313','Chicago','NC','4827 Maple Court','63166')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (145,18,19,{d '2006-06-04'},'Orange,Green','Wilson,Edgar J.',NULL,'274-64-5735',92969,84,'Senior WebMaster','Fargo','MA','4415 Oak Place','95806','Boston','MN','3027 Second Court','35910')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (146,97,20,{d '1928-02-10'},'Orange','Nelson,Angelo L.',NULL,'401-66-7038',79770,78,'Laboratory Engineer','Fargo','RI','2849 Clinton Blvd','40548','Newton','AL','4666 First Drive','55381')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (147,19,18,{d '2005-12-26'},'Red,Green','Ueckert,Jocelyn W.',NULL,'278-22-6957',8467,86,'Senior Hygienist','Fargo','ID','8737 Washington Drive','68135','Ukiah','NH','7806 Maple Street','80421')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (148,18,10,{d '2006-11-13'},'Green','Paladino,Amanda J.',NULL,'872-92-1833',54906,74,'Assistant Systems Engineer','St Louis','FL','925 Elm Court','30697','Albany','NE','6636 First Blvd','63595')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (149,94,1,{d '1930-08-30'},NULL,'O''Brien,Aviel U.',NULL,'901-25-4888',83892,34,'Executive WebMaster','Chicago','NE','5945 Oak Place','40280','Fargo','NJ','9780 Ash Drive','89111')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (150,43,20,{d '1981-04-28'},NULL,'Davis,Mo X.',NULL,'109-39-6278',98957,69,'Senior Product Specialist','Oak Creek','AR','2331 Madison Court','63060','Chicago','OK','8507 Ash Avenue','12801')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (151,1,15,{d '2023-04-25'},'Purple,Red','Ramsay,Marvin R.',NULL,'689-97-6517',90021,46,'Strategic Research Asst.','Gansevoort','NC','6232 Maple Street','28397','Oak Creek','WV','623 Main Place','63003')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (152,84,3,{d '1940-11-20'},'Orange','Bush,Christen P.',NULL,'185-85-4592',8809,73,'Assistant Research Asst.','Reston','MN','2483 Clinton Blvd','32026','Washington','NV','9808 Ash Avenue','37822')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (153,71,1,{d '1953-10-09'},'Black,Red','Tsatsulin,Bart R.',NULL,'559-46-7203',33027,31,'Assistant Resources Director','Queensbury','CT','2153 Madison Street','55722','Albany','ND','6508 Clinton Court','43198')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (154,43,6,{d '1982-03-22'},NULL,'Press,William A.',NULL,'639-83-4491',5995,62,'Laboratory Director','Chicago','NC','6796 Clinton Place','92281','Larchmont','PA','7443 Oak Drive','34738')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (155,53,11,{d '1971-10-09'},'Red,Black','Thompson,James P.',NULL,'442-59-6124',50684,19,'Assistant Support Engineer','Elmhurst','AL','144 First Place','14833','Oak Creek','OH','9957 Maple Drive','84018')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (156,11,12,{d '2013-11-21'},'Orange,White','Yeats,Brenda J.',NULL,'334-57-9524',57438,63,'Strategic Accountant','Larchmont','AR','4585 Madison Avenue','59063','Hialeah','FL','6454 Oak Street','31828')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (157,78,2,{d '1946-09-02'},'Red,Orange','Jung,Brian V.',NULL,'171-64-8749',51000,1,'Executive Hygienist','Tampa','VA','1048 Madison Court','75933','Miami','ID','3133 Oak Blvd','46899')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (158,88,3,{d '1936-11-05'},NULL,'Vonnegut,Joe F.',NULL,'231-51-8907',98288,91,'Global Administrator','Xavier','IA','7090 Clinton Blvd','22839','Gansevoort','MS','4231 Maple Court','73205')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (159,94,12,{d '1931-02-16'},NULL,'Page,Elvis C.',NULL,'574-58-5557',9925,9,'Associate Hygienist','Oak Creek','ID','7366 Washington Court','70809','Bensonhurst','TX','1874 Clinton Street','53045')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (160,57,18,{d '1967-07-10'},'Green,Orange','Burroughs,Sam A.',NULL,'482-16-1498',6991,24,'Strategic Marketing Manager','Queensbury','CO','8221 Franklin Court','77486','Larchmont','WY','5656 First Drive','33901')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (161,46,19,{d '1978-06-12'},'Blue','Willeke,William D.',NULL,'928-28-2113',44887,29,'Senior Product Manager','Zanesville','KS','7742 Main Court','15578','Larchmont','MD','5072 Madison Avenue','95237')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (162,98,6,{d '1926-05-24'},NULL,'Bush,Emma A.',NULL,'138-83-2492',90532,60,'Laboratory Administrator','Oak Creek','ID','7153 Maple Avenue','23452','Reston','KY','169 Clinton Street','34450')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (163,65,9,{d '1959-12-24'},NULL,'Townsend,David M.',NULL,'166-78-9193',2524,93,'Laboratory Administrator','Zanesville','ID','3073 Clinton Avenue','78203','Youngstown','DE','5307 Ash Blvd','85625')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (164,0,6,{d '2024-08-11'},NULL,'Goncharuk,Charles K.',NULL,'261-94-8064',23103,24,'Associate Hygienist','St Louis','GA','4703 Second Street','48578','Elmhurst','MA','2357 Oak Blvd','80956')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (165,89,7,{d '1935-12-18'},'Black,Purple','Taylor,William V.',NULL,'121-71-1789',60104,57,'Associate Product Specialist','Newton','CA','8382 Oak Street','70580','Elmhurst','LA','3128 Second Place','27411')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (166,71,13,{d '1953-06-28'},'Red,Green','Lepon,John V.',NULL,'769-15-7303',11449,11,'Associate Marketing Manager','Chicago','TN','557 Elm Street','31404','St Louis','AR','7210 Franklin Drive','90664')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (167,65,15,{d '1960-02-02'},'Red','Huff,Michael C.',NULL,'685-79-4730',66762,92,'Laboratory Resources Director','Gansevoort','IN','7601 First Avenue','76466','Reston','KS','8567 Maple Street','49956')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (168,44,9,{d '1980-11-17'},'Red','Iacobelli,Dick H.',NULL,'703-92-5909',16148,81,'Laboratory Developer','Xavier','IN','5255 Washington Avenue','97591','Albany','UT','5068 Elm Drive','30358')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (169,36,7,{d '1988-06-27'},'Yellow','Ulman,Edgar X.',NULL,'801-29-7145',71934,49,'Strategic Research Asst.','Bensonhurst','OR','5412 Second Drive','73686','Queensbury','MT','9242 Washington Street','91376')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (170,55,12,{d '1970-02-26'},'Black','Bach,Jeff G.',NULL,'645-84-9160',19764,86,'Executive Administrator','Bensonhurst','HI','9376 Franklin Court','49780','Newton','MO','5845 First Court','22151')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (171,83,3,{d '1942-01-21'},'Green,Purple','Xerxes,Patricia B.',NULL,'404-78-4132',94958,49,'Assistant Research Asst.','Boston','TN','9747 Franklin Avenue','45339','Washington','ID','9630 Clinton Court','15262')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (172,4,18,{d '2021-02-18'},'White,White','DeSantis,Pat Q.',NULL,'947-95-2012',74574,87,'Assistant Technician','Albany','MO','3500 Maple Court','90950','Oak Creek','ME','4188 Elm Court','87777')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (173,1,10,{d '2023-05-16'},'Green,Black','Ravazzolo,Emily D.',NULL,'358-91-1213',95730,90,'Global Product Specialist','Boston','NY','2884 Main Place','66743','Chicago','WI','7513 Second Drive','12513')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (174,33,2,{d '1991-09-24'},'Yellow','Koivu,Jules E.',NULL,'595-66-1863',96532,26,'Laboratory Hygienist','Reston','IN','7255 Second Drive','61781','Reston','CO','2129 Oak Avenue','51311')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (175,5,3,{d '2019-09-10'},'Green,Purple','Emerson,Elmo K.',NULL,'452-20-8884',43610,79,'Global Technician','St Louis','OH','5196 Maple Avenue','59247','Xavier','FL','4562 Franklin Court','34583')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (176,29,7,{d '1996-01-13'},'Black,Red','Vivaldi,Valery Y.',NULL,'739-91-3049',68038,97,'Hygienist','Chicago','PA','4872 Franklin Avenue','11835','St Louis','MS','2794 Ash Drive','87276')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (177,100,12,{d '1924-08-02'},'Blue','Chadwick,Phyllis T.',NULL,'873-94-7017',13780,20,'Assistant Hygienist','Islip','MA','6229 First Street','39925','Albany','MN','3872 Oak Street','66760')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (178,29,2,{d '1995-11-27'},'Purple,Black','Uhles,Marvin D.',NULL,'996-56-6486',5820,58,'Executive Systems Engineer','Youngstown','NM','5002 Clinton Street','77273','Oak Creek','AZ','3558 Washington Drive','96696')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (179,70,18,{d '1954-12-31'},'Purple','Pybus,Jane A.',NULL,'213-29-9535',58304,70,'Executive Technician','Youngstown','NV','1721 Clinton Drive','28418','Jackson','MA','7390 Main Avenue','97575')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (180,78,18,{d '1946-06-19'},NULL,'Bush,Rob E.',NULL,'732-89-7852',26373,23,'Global Hygienist','Oak Creek','NH','3487 Ash Avenue','17137','Queensbury','WA','2636 Madison Avenue','79032')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (181,31,20,{d '1994-02-14'},NULL,'Page,Michael U.',NULL,'161-77-4500',55602,7,'Marketing Manager','Washington','IN','7975 Washington Avenue','50956','Chicago','WY','6428 Second Street','17116')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (182,43,12,{d '1981-08-25'},NULL,'O''Donnell,Lawrence S.',NULL,'574-70-6564',37960,29,'Laboratory Accounts Rep.','Elmhurst','NM','8110 Madison Drive','12376','Denver','LA','7839 Washington Drive','84368')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (183,31,10,{d '1993-07-17'},NULL,'Ramsay,Yan H.',NULL,'827-28-1543',1857,2,'Assistant WebMaster','Albany','NM','9073 Oak Avenue','22238','Zanesville','DE','3798 Franklin Drive','30822')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (184,52,5,{d '1972-12-08'},NULL,'Palmer,Kenny I.',NULL,'549-61-3276',94872,54,'Associate Product Specialist','Zanesville','RI','3477 Main Blvd','35833','Denver','NE','3600 Ash Place','63796')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (185,33,9,{d '1992-02-17'},'Purple,Black','Alton,Imelda O.',NULL,'990-37-2218',4879,48,'Global Product Specialist','Zanesville','MS','1950 Elm Blvd','38809','Jackson','WA','4940 Washington Blvd','24216')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (186,96,15,{d '1929-02-26'},'Orange','Malynko,Nataliya N.',NULL,'709-69-4358',80552,74,'Associate WebMaster','Vail','MN','9623 Second Place','77038','Chicago','IN','3643 Madison Avenue','75846')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (187,20,5,{d '2005-02-23'},'Orange,Yellow','North,Kyra O.',NULL,'582-70-4805',29007,64,'Executive Technician','Zanesville','SC','1821 Second Place','13953','Jackson','TX','6146 Franklin Blvd','91693')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (188,35,18,{d '1989-04-19'},'Purple','Umansky,Milhouse W.',NULL,'643-42-9097',15775,29,'Senior Sales Rep.','Larchmont','CT','4004 Madison Blvd','85720','Denver','AZ','6376 Ash Drive','45072')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (189,64,3,{d '1960-08-30'},NULL,'North,Samantha N.',NULL,'326-31-3602',89588,42,'Executive Research Asst.','Fargo','NC','2823 First Drive','71822','Zanesville','GA','8184 Elm Street','27146')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (190,4,11,{d '2020-04-12'},NULL,'Quince,Fred B.',NULL,'898-85-2540',18722,37,'Hygienist','Bensonhurst','WV','2173 Ash Street','54768','Hialeah','VA','9351 Ash Street','71820')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (191,70,9,{d '1955-01-30'},NULL,'Quincy,Elvis F.',NULL,'951-89-7087',56631,83,'Strategic Director','Ukiah','MA','4195 First Blvd','44951','Bensonhurst','IN','6524 Madison Place','58190')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (192,69,8,{d '1955-12-08'},'Purple,Green','Quince,Wolfgang O.',NULL,'171-27-3733',75536,5,'Strategic Support Engineer','Youngstown','IA','215 Oak Place','85988','Fargo','HI','1621 Second Blvd','61448')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (193,70,20,{d '1955-01-24'},'Green','Loveluck,Filomena L.',NULL,'173-54-3510',80238,20,'Executive Administrator','Vail','IL','1100 Franklin Blvd','22453','Youngstown','VA','9985 Second Blvd','91554')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (194,26,7,{d '1998-05-27'},NULL,'Grabscheid,Chris V.',NULL,'863-38-4500',17791,3,'Sales Rep.','Vail','KS','4757 Ash Blvd','75122','Vail','TN','793 Washington Place','61206')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (195,80,10,{d '1944-09-30'},'Orange,Black','Quilty,Molly H.',NULL,'257-22-9004',48250,12,'Associate Systems Engineer','Reston','ND','9469 First Avenue','39759','Larchmont','FL','9082 Oak Court','46468')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (196,44,14,{d '1980-04-03'},'Green,White','Page,Juanita V.',NULL,'958-94-3791',11294,54,'Director','St Louis','IL','7143 Second Blvd','95809','Vail','NC','9963 Elm Avenue','37711')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (197,77,14,{d '1947-10-27'},NULL,'Uberoth,Violet H.',NULL,'288-16-2503',66518,27,'Strategic Product Manager','Fargo','VA','8458 Ash Street','58117','Youngstown','NY','6525 Oak Place','61211')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (198,25,2,{d '1999-05-01'},NULL,'Ravazzolo,Vincent C.',NULL,'914-48-7125',30605,62,'Senior Sales Rep.','Ukiah','WI','4267 Main Place','12975','Tampa','RI','6490 Maple Blvd','82141')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (199,38,7,{d '1986-05-13'},'Green','Salm,Geoffrey Y.',NULL,'833-85-7143',58865,30,'Associate Resources Director','Miami','IN','8251 Main Drive','62859','Queensbury','TN','2187 Maple Avenue','63943')
GO
INSERT INTO SQLUSER.Employee (ID,Age,Company,DOB,FavoriteColors,Name,Notes,SSN,Salary,Spouse,Title,Home_City,Home_State,Home_Street,Home_Zip,Office_City,Office_State,Office_Street,Office_Zip) VALUES (200,38,1,{d '1987-03-23'},'Yellow','Jones,Danielle T.',NULL,'243-68-8846',55845,32,'Associate Accounts Rep.','Fargo','LA','6062 Oak Blvd','89025','Jackson','AZ','7041 Franklin Blvd','72998')
GO
CREATE TABLE SQLUSER.EmployeeOriginal AS SELECT * FROM SQLUSER.Employee
GO