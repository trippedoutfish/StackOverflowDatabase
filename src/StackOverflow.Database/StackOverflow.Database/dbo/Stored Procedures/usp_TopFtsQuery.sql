-- =============================================
-- Author:		trippedoutfish
-- Create date: 02/02/2020	
-- Description:	Top FTS Query
-- =============================================
CREATE PROCEDURE [dbo].[usp_TopFtsQuery]
	@queryText varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DECLARE @postId int = (SELECT TOP 1 FT_TBL.Id
	FROM Posts AS FT_TBL   
		 INNER JOIN  
		 FREETEXTTABLE(Posts, Body,  
						@queryText) AS KEY_TBL  
		 ON FT_TBL.Id = KEY_TBL.[KEY]  
	WHERE KEY_TBL.RANK >= 10  
	ORDER BY KEY_TBL.RANK DESC  );

	(SELECT
		'Question',
		Body
	from 
		Posts 
	where 
		Id = @postId 
		AND PostTypeId = 1)
	UNION
	(SELECT 
		'Answer',
		Body 
	from 
		Posts 
	where 
		Id = (SELECT TOP 1 AcceptedAnswerId FROM Posts where Id = @postId and PostTypeId = 1)
		AND PostTypeId = 2)
END