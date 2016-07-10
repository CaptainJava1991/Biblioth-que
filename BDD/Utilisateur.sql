CREATE TABLE [dbo].[Utilisateur]
(
	[idUtilisateur] DECIMAL(6) NOT NULL PRIMARY KEY,
	[nom] VARCHAR(40) NOT NULL,
	[prenom] VARCHAR(40) NOT NULL,
	[pwd] VARCHAR(15) NOT NULL,
	[pseudonyme] VARCHAR(20) NOT NULL,
	[datenaissance] DATE NOT NULL,
	[sexe] VARCHAR(1) NOT NULL,
	[categorieutilisateur] VARCHAR(15) NOT NULL,
	CONSTRAINT CK_catgorie_utilisateur CHECK (categorieutilisateur IN ('EMPLOYE', 'ADHERENT')),
	CONSTRAINT CK_sexe CHECK (sexe IN ('H', 'F')),
	CONSTRAINT TC_pseudo UNIQUE (pseudonyme)
)


