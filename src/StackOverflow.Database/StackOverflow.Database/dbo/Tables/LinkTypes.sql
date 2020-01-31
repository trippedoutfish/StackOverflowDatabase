﻿CREATE TABLE [dbo].[LinkTypes] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Type] VARCHAR (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    CONSTRAINT [PK_LinkTypes__Id] PRIMARY KEY CLUSTERED ([Id] ASC)
);

