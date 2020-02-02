CREATE FULLTEXT INDEX ON [dbo].[Posts]
    ([Body] LANGUAGE 1033, [LastEditorDisplayName] LANGUAGE 1033, [Tags] LANGUAGE 1033, [Title] LANGUAGE 1033)
    KEY INDEX [PK_Posts__Id]
    ON ([PostsFullText], FILEGROUP [FULLTEXT]);

