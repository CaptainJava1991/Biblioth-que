CREATE TABLE [dbo].[Adherent]
(
	[idUtilisateur] DECIMAL(6) NOT NULL IDENTITY(0,1) PRIMARY KEY,
	[telephone] VARCHAR(16) NOT NULL,
	CONSTRAINT FK_Adherent30 FOREIGN KEY (idUtilisateur) REFERENCES Utilisateur (idUtilisateur),


)
