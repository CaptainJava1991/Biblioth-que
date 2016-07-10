CREATE TABLE [dbo].[EmpruntEncours]
(
	[idExemplaire] DECIMAL(6) NOT NULL PRIMARY KEY,
	[idUtilisateur] DECIMAL(6) NOT NULL,
	[dateEmprunt] DATE NOT NULL,
	CONSTRAINT FK_EmpruntEncours47 FOREIGN KEY (idExemplaire) REFERENCES Exemplaire (idExemplaire),
	CONSTRAINT FK_EmpruntEncours29 FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur),

)
