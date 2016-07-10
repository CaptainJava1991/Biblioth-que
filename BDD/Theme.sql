CREATE TABLE [dbo].[Theme]
(
	[codeTheme] VARCHAR(2) NOT NULL PRIMARY KEY,
	[libelle] VARCHAR(40) NOT NULL,
	[theme_parent] VARCHAR(2),
	CONSTRAINT FK_Theme45 FOREIGN KEY (theme_parent) REFERENCES Theme (codeTheme),
)
