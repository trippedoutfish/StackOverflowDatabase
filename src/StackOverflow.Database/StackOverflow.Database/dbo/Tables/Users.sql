CREATE TABLE [dbo].[Users] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [AboutMe]        NVARCHAR (MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Age]            INT            NULL,
    [CreationDate]   DATETIME       NOT NULL,
    [DisplayName]    NVARCHAR (40)  COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [DownVotes]      INT            NOT NULL,
    [EmailHash]      NVARCHAR (40)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [LastAccessDate] DATETIME       NOT NULL,
    [Location]       NVARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Reputation]     INT            NOT NULL,
    [UpVotes]        INT            NOT NULL,
    [Views]          INT            NOT NULL,
    [WebsiteUrl]     NVARCHAR (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [AccountId]      INT            NULL,
    CONSTRAINT [PK_Users_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

