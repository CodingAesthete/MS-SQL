ALTER TABLE [Users]
DROP CONSTRAINT PK__Users__3214EC0714F5301E; 
 
ALTER TABLE [Users]
ADD CONSTRAINT PK__Users__CompositeIdUsername
PRIMARY KEY([Id],[Username])