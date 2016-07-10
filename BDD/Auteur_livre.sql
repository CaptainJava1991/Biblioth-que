CREATE TABLE [dbo].[Auteur_livre]
(
	[isbn] VARCHAR(16) NOT NULL PRIMARY KEY,
	[idAuteur] DECIMAL(6) NOT NULL UNIQUE,
	[ordreAuteur] DECIMAL(2),
	CONSTRAINT CK_ordreAuteur CHECK (ordreAuteur > 0),	
	CONSTRAINT FK_Ecrire43 FOREIGN KEY (isbn) REFERENCES Livre (isbn),
	CONSTRAINT FK_Auteur_livre46 FOREIGN KEY (idAuteur) REFERENCES Auteur (idAuteur),
	 
)
