CREATE TABLE [dbo].[BlogContent]
(
	[Id] INT NOT NULL , 
	[BlogId] INT NOT NULL , 
	[Active] Bit NOT NULL DEFAULT 1,
	[DateAdded] DATETIME NOT NULL,
	[DateCreated] DATETIME NOT NULL,
	[CreatedBy] NVARCHAR(100) NOT NULL,
	[ModifiedBy] NVARCHAR(100) NOT NULL
    CONSTRAINT [FK_BlogContent_Blog] FOREIGN KEY (BlogId) REFERENCES [Blog]([Id]) 

)
