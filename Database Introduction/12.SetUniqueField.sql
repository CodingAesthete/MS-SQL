ALTER TABLE [Users]
DROP CONSTRAINT PK__Users__CompositeIdUsername
 
ALTER TABLE [Users]
ADD CONSTRAINT PK__Users__IdPrimaryKey
PRIMARY KEY([Id])
 
ALTER TABLE [Users]
ADD CONSTRAINT CK_Username_Length
CHECK (LEN([Username])>=3)
 
SELECT * FROM [Users]