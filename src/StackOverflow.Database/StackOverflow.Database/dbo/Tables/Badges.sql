CREATE TABLE [dbo].[Badges] (
    [Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [UserId] INT           NOT NULL,
    [Date]   DATETIME      NOT NULL,
    CONSTRAINT [PK_Badges__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

