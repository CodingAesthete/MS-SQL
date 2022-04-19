Create Table People
(
Id INT Primary key Identity,
[Name] NVARCHAR(200) NOT NULL,
Picture NVARCHAR(MAX),
Height DECIMAL(5,2),
[Weight] DECIMAL (5,2),
Gender CHAR(1) NOT NULL CHECK(Gender='m' Or Gender='f'),
Birthdate Date Not NULL,
Biography NVARCHAR(Max)
)
Insert into People([Name],Picture, Height, [Weight], Gender, Birthdate, Biography) VALUES
('Linda','https://www.google.com/search?q=moonlight&tbm=isch&ved=2ahUKEwjG7dCcoN3yAhUSgKQKHSgQAHEQ2-cCegQIABAA&oq=moonlight&gs_lcp=CgNpbWcQAzIHCCMQ7wMQJzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDoKCCMQ7wMQ6gIQJzoECAAQQzoICAAQgAQQsQNQtasKWOC9CmC2vwpoAXAAeACAAWCIAY4GkgEBOZgBAKABAaoBC2d3cy13aXotaW1nsAEKwAEB&sclient=img&ei=oisvYcaULpKAkgWooICIBw&bih=657&biw=1360#imgrc=cbquhjRKiMtivM',
181, 52, 'f', '2021-05-31', NULL),
('Patricia', NULL, 170, 53, 'f', '1999-06-02', NULL),
('Lisa', NULL, 166, 50, 'f', '1998-07-04', NULL),
('Anna', NULL, 171, 54, 'f', '2000-07-12', NULL),
('Elena', NULL, 173, 55, 'f', '1998-04-03',NULL)