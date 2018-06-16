USE Trump
GO


DELETE FROM StoryConflict
GO

DELETE FROM Story
GO


CREATE UNIQUE NONCLUSTERED INDEX ConflictUniqueName ON [dbo].[Conflict]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO


CREATE UNIQUE NONCLUSTERED INDEX StoryUniqueLink ON [dbo].[Story]
(
	[Link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO

CREATE UNIQUE NONCLUSTERED INDEX ConflictConflictUniqueStoryIDConflictID ON [dbo].[StoryConflict]
(
	[StoryID] ASC,
	[ConflictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO
