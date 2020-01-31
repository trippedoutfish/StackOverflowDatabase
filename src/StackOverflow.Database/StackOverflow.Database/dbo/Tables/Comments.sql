CREATE TABLE [dbo].[Comments] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [CreationDate] DATETIME       NOT NULL,
    [PostId]       INT            NOT NULL,
    [Score]        INT            NULL,
    [Text]         NVARCHAR (700) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [UserId]       INT            NULL,
    CONSTRAINT [PK_Comments__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20200130-190750]
    ON [dbo].[Comments]([PostId] ASC, [Id] ASC)
    INCLUDE([CreationDate], [Score], [UserId], [Text]);

