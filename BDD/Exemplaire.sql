CREATE TABLE [dbo].[Exemplaire]
(
	[idExemplaire] DECIMAL(6) NOT NULL PRIMARY KEY,
	[dateAchat] DATE NOT NULL,
	[status] VARCHAR(15) NOT NULL,
	[isbn] VARCHAR(16) NOT NULL,
	CONSTRAINT CK_status CHECK (status IN ('PRETE' , 'DISPONIBLE', 'SUPPRIME')),
	CONSTRAINT FK_Exemplaire24 FOREIGN KEY (isbn) REFERENCES Livre (isbn),

)
