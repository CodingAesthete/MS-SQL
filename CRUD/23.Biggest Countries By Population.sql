Select TOP(30)
CountryName,Population
From Countries
Where ContinentCode LIKE 'EU'
ORDER BY [Population] DESC, CountryName ASC