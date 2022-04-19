Create Table Directors
(
Id INT Identity,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
Create Table Genres
(
ID INT Identity,
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
Create Table Categories
(
Id INT Identity,
CategoryName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
Create Table Movies
(
Id INT Identity,
Title NVARCHAR(50),
DirectorId INT,
CopyrightYear INT,
[Length] INT,
GenreId INT,
CategoryId int,
Rating int, 
Notes nvarchar(MAX)
)
Alter Table Directors
Add constraint PK_Id Primary key(Id)
Alter Table Genres
Add constraint PK_Genres Primary key(Id)
Alter Table Categories
Add constraint PK_Categories Primary key(Id)
Alter Table Movies
Add constraint PK_Movies Primary key(Id)
Insert into Directors(DirectorName,Notes) VALUES
('Alex', 'SQL, C#'),
('Offlein', 'Machine Learning'),
('Olav', 'Security systems'),
('Gulf', 'Marketing'),
('Strömsheim', 'Databases')
Insert into Genres(GenreName,Notes) VALUES
('action', 'boring genre in my oppinion'),
('horror', 'cannot sleep for 3 days days in a row thanks to this shit'),
('musical', 'Wait what?! There are some other musicals excepts the Cats'),
('tragedy', 'I promise to not cry on that'),
('comedy', 'Finally something positive!')
Insert Into Categories(CategoryName,Notes) VALUES
('finito', 'noooooo'),
('startito', 'yeaaaah'),
('mediumito', 'hmmmm'),
('nullito', 'oh come ooon'),
('perfito', 'wowowow')
Insert into Movies (Title,DirectorId,CopyrightYear,[Length], GenreId,CategoryId,Rating,Notes) VALUES
('King' ,5,1999,78,1,5,10,'otlichen'),
('RRIRIR',4,2000,90,2,4,9,'otlichen'),
('plpppo',3,1980,100,3,3,5,'otlichen'),
('kkiklo',2,1890,20,4,2,10,'iopkll'),
('ukukkk',1,1990,120,5,1,10,'plpppp')