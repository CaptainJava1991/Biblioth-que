CREATE TABLE [dbo].[Employe]
(
	[idUtilisateur] DECIMAL(6) NOT NULL PRIMARY KEY,
	[codeMatricule] VARCHAR(15) NOT NULL,
	[categorieEmploye] VARCHAR(15) NOT NULL,
	CONSTRAINT TC_Employe147 UNIQUE (codeMatricule),
	CONSTRAINT CK_categorie_employe CHECK (categorieEmploye IN ('BIBLIOTHECAIRE' , 'RESPONSABLE' , 'GESTIONNAIRE')),
	CONSTRAINT FK_Employe33 FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur),



)
