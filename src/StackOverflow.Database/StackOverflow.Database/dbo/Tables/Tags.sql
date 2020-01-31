CREATE TABLE [dbo].[Tags] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [TagName]       NVARCHAR (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [Count]         INT            NOT NULL,
    [ExcerptPostId] INT            NOT NULL,
    [WikiPostId]    INT            NOT NULL,
    CONSTRAINT [PK_Tags__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

