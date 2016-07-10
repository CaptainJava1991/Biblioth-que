CREATE TABLE [dbo].[Livre]
(
	[isbn] VARCHAR(16) NOT NULL PRIMARY KEY,
	[titre] VARCHAR(40) NOT NULL,
	[idEditeur] DECIMAL(5) NOT NULL,
	[codeTheme] VARCHAR(2) NOT NULL,
	[anneeParution] DECIMAL(5) NOT NULL,
	[nbPages] DECIMAL(5) NOT NULL,
	CONSTRAINT CK_annee_parution CHECK (anneeParution > 0),
	CONSTRAINT CK_Nb_Pages CHECK (nbPages >=0),
	CONSTRAINT FK_Livre19 FOREIGN KEY (idEditeur) REFERENCES Editeur (idEditeur),
	CONSTRAINT FK_Livre25 FOREIGN KEY (codeTheme) REFERENCES Theme (codeTheme),


)
