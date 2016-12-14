﻿CREATE TABLE [dbo].[BlogTag]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[BlogId] INT NOT NULL,
	[TagId] INT NOT NULL,
	[Active] Bit NOT NULL DEFAULT 1,
	[DateAdded] DATETIME NOT NULL,
	[DateCreated] DATETIME NOT NULL,
	[CreatedBy] NVARCHAR(100) NOT NULL,
	[ModifiedBy] NVARCHAR(100) NOT NULL

	CONSTRAINT [FK_BlogTag_Blog] FOREIGN KEY (BlogId) REFERENCES [Blog]([Id])
	CONSTRAINT [FK_BlogTag_Tag] FOREIGN KEY (TagId) REFERENCES [Tag](Id)
	 
)
