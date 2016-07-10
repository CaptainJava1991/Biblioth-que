CREATE TABLE [dbo].[EmpruntArchive]
(
	[idEmpruntArchive] DECIMAL(6) NOT NULL PRIMARY KEY,
	[dateEmprunt] DATE NOT NULL,
	[dateRestitutionEff] DATE NOT NULL,
	[idExemplaire] DECIMAL(6) NOT NULL,
	[idUtilisateur] DECIMAL(6) NOT NULL,
	CONSTRAINT FK_EmpruntArchive44 FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur),
	CONSTRAINT FK_EmpruntArchive48 FOREIGN KEY (idExemplaire) REFERENCES Exemplaire (idExemplaire),

)
