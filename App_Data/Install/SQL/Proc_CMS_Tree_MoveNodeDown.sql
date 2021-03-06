CREATE PROCEDURE [Proc_CMS_Tree_MoveNodeDown]
	@NodeID int
AS
BEGIN
	/* Move the previous node(s) up */
	UPDATE CMS_Tree SET NodeOrder = NodeOrder - 1 WHERE NodeOrder = (SELECT NodeOrder FROM CMS_Tree WHERE NodeID = @NodeID) + 1 AND NodeParentID = (SELECT NodeParentID FROM CMS_Tree WHERE NodeID = @NodeID)
	/* Move the current node down */
	UPDATE CMS_Tree SET NodeOrder = NodeOrder + 1 WHERE NodeID = @NodeID
END
