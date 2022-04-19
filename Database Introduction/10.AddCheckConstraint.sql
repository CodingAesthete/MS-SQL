ALTER TABLE [Users]
ADD CONSTRAINT CK_UserS_PaswordLength
CHECK (LEN([Password])>=5)