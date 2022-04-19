CREATE TABLE Users
(
	Id BIGINT Primary key Identity,
	Username VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(MAX),
	LastLoginTime DATETIME,
	IsDeleted BIT
)
Insert into Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted) VALUES
('Kellerziker','Sette7','https://www.google.com/search?q=moonlight&sxsrf=AOaemvIKdjv2bUpwU1usFbMFu2iiARRwJQ:1630411291373&source=lnms&tbm=isch&sa=X&ved=2ahUKEwih0u-um9vyAhUNRPEDHcggApUQ_AUoAXoECAIQAw&biw=1360&bih=657#imgrc=FvNiTOMXFAOCqM',
'00:00:01',0),
('WinterMood','Klingenten', NULL, '2021-05-12 21:12:35',1),
('Limitless','Teutor', NULL, '1999-05-30',0),
('MagyarRostank','Sziaaa', NULL, '15:30:59',0),
('Khan','WeltMeister', NULL, '07:48:12',1)
Select * From Users