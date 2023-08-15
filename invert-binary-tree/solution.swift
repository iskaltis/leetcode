class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        guard let root: TreeNode = root else {
            return nil
        }

        var invertedTree: TreeNode = TreeNode(root.val)
        invertedTree.left = invertTree(root.right)
        invertedTree.right = invertTree(root.left)

        return invertedTree

    }
}