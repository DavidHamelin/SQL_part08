--SQL - Partie 8 : Les jointures

/*
--Ex01 :

USE [development]
GO
SELECT [dbo].[languages].[name], [dbo].[frameworks].[name]
FROM [dbo].[frameworks]
FULL OUTER JOIN [dbo].[languages] ON [dbo].[frameworks].[languagesId]=[dbo].[languages].[id]
ORDER BY [dbo].[languages].[name];


--Ex02 :

SELECT [dbo].[languages].[name], [dbo].[frameworks].[name]
FROM [dbo].[frameworks]
INNER JOIN [dbo].[languages] ON [dbo].[frameworks].[languagesId]=[dbo].[languages].[id]
ORDER BY [dbo].[languages].[id];


--Ex03 :

USE [development]
GO

SELECT [dbo].[languages].[name], COUNT([dbo].[frameworks].[name])
AS [result] -- création d'une nouvelle colonne où le résultat sera affiché
FROM [dbo].[languages]
INNER JOIN [dbo].[frameworks] ON [dbo].[languages].[id]=[dbo].[frameworks].[languagesId]
GROUP BY [dbo].[languages].[name];


--Ex04 : 

USE [development]
GO

SELECT [dbo].[languages].[name], COUNT([dbo].[frameworks].[name])
AS result -- création d'une nouvelle colonne où le résultat sera affiché
FROM [dbo].[languages]
INNER JOIN [dbo].[frameworks] ON [dbo].[languages].[id]=[dbo].[frameworks].[languagesId]
GROUP BY [dbo].[languages].[name]
HAVING COUNT([dbo].[frameworks].[name]) >= 3
GO

*/