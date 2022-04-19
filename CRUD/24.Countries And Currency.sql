Select CountryName,CountryCode,
CASE
When CurrencyCode ='EUR' THEN 'Euro'
Else 'Not Euro'
END AS Currency
FROM Countries
ORDER BY CountryName ASC