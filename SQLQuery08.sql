--SQL - Partie 8 : Les jointures


--Ex01 :
/*
USE [development]
GO
SELECT [dbo].[languages].[name], [dbo].[frameworks].[name]
FROM [dbo].[frameworks]
FULL OUTER JOIN [dbo].[languages] ON [dbo].[frameworks].[languagesId]=[dbo].[languages].[id]
ORDER BY [dbo].[languages].[name];

USE [development]
GO
SELECT 
	[dbo].[languages].[name] AS [language], 
	[dbo].[frameworks].[name] AS [framework]
FROM
	[dbo].[languages] 
LEFT JOIN
	[dbo].[frameworks] ON [dbo].[frameworks].[languagesId]=[dbo].[languages].[id]
ORDER BY
	[dbo].[languages].[name];
*/
/*
--Ex02 :

USE [development]
GO
SELECT 
	[lg].[name] AS [language], -- AS = Alias
	[fw].[name] AS [framework]
FROM
	[dbo].[languages] AS [lg] -- le logiciel commence par lire le FROM
INNER JOIN
	[dbo].[frameworks] AS [fw] ON [fw].[languagesId]=[lg].[id] -- Alias fw pour frameworks
ORDER BY
	[lg].[name];
*/
/*
--Ex03 :

USE [development]
GO

SELECT
	[dbo].[languages].[name],
	COUNT([dbo].[frameworks].[name]) AS [result] -- création d'une nouvelle colonne où le résultat sera affiché (Alias)
FROM
	[dbo].[languages]
LEFT JOIN
	[dbo].[frameworks] ON [dbo].[languages].[id]=[dbo].[frameworks].[languagesId]
GROUP BY
	[dbo].[languages].[name]
GO
*/

--Ex04 : 

USE
	[development]
GO
SELECT 
	[dbo].[languages].[name],
	COUNT([dbo].[frameworks].[name]) AS result -- création d'une nouvelle colonne où le résultat sera affiché
FROM
	[dbo].[languages]
INNER JOIN
	[dbo].[frameworks] ON [dbo].[languages].[id]=[dbo].[frameworks].[languagesId]
GROUP BY
	[dbo].[languages].[name]
HAVING
	COUNT([dbo].[frameworks].[name]) >= 3
GO

