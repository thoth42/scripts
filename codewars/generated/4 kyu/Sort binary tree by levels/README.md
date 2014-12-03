## Sort binary tree by levels
[Sort binary tree by levels](https://www.codewars.com/kata/sort-binary-tree-by-levels)
Category : algorithms

### Description
You are given a binary tree (not sorted, it doesn't matter in this kata) represented by TreeNode type, which is defined like this:

```haskell
data TreeNode a = TreeNode {
  left  :: Maybe (TreeNode a),
  right :: Maybe (TreeNode a),
  value :: a
  } deriving Show
```

Your task is to return the list with elements from tree sorted by levels, which means the root element goes first, then root children (from left to right) are second and third, and so on. Return empty list for empty tree (Nothing).

Example 1 - following tree:

                     2
                8        9
              1  3     4   5

Should return following list:

    [2,8,9,1,3,4,5]

Example 2 - following tree:

                     1
                8        4
                  3        5
                             7
Should return following list:

    [1,8,4,3,5,7]

### Tags
Algorithms; Trees; Data Structures; Binary Search Trees; Binary

- - -
