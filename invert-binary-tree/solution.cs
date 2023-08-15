public class Solution {
    public TreeNode InvertTree(TreeNode root) {

        if (root == null) {
            return null;
        }

        TreeNode invertedTree = new TreeNode(root.val);
        invertedTree.left = InvertTree(root.right);
        invertedTree.right = InvertTree(root.left);
        
        return invertedTree;

    }
}
