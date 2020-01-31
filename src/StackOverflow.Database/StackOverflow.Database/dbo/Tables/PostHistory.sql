CREATE TABLE [dbo].[PostHistory] (
    [Id]                INT              IDENTITY (1, 1) NOT NULL,
    [PostHistoryTypeId] INT              NOT NULL,
    [PostId]            INT              NOT NULL,
    [RevisionGUID]      UNIQUEIDENTIFIER NULL,
    [CreationDate]      DATETIME         NOT NULL,
    [UserId]            INT              NULL,
    [UserDisplayName]   NVARCHAR (40)    COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Comment]           NVARCHAR (MAX)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Text]              NVARCHAR (MAX)   COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    CONSTRAINT [PK_PostHistory__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

