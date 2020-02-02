CREATE TABLE [dbo].[Posts] (
    [Id]                    INT            IDENTITY (1, 1) NOT NULL,
    [AcceptedAnswerId]      INT            NULL,
    [AnswerCount]           INT            NULL,
    [Body]                  NVARCHAR (MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [ClosedDate]            DATETIME       NULL,
    [CommentCount]          INT            NULL,
    [CommunityOwnedDate]    DATETIME       NULL,
    [CreationDate]          DATETIME       NOT NULL,
    [FavoriteCount]         INT            NULL,
    [LastActivityDate]      DATETIME       NOT NULL,
    [LastEditDate]          DATETIME       NULL,
    [LastEditorDisplayName] NVARCHAR (40)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [LastEditorUserId]      INT            NULL,
    [OwnerUserId]           INT            NULL,
    [ParentId]              INT            NULL,
    [PostTypeId]            INT            NOT NULL,
    [Score]                 INT            NOT NULL,
    [Tags]                  NVARCHAR (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Title]                 NVARCHAR (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [ViewCount]             INT            NOT NULL,
    CONSTRAINT [PK_Posts__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20200130-180829]
    ON [dbo].[Posts]([PostTypeId] ASC, [AcceptedAnswerId] ASC, [Id] ASC)
    INCLUDE([AnswerCount], [CreationDate], [LastActivityDate], [Score]);



