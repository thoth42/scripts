## Counting power sets
[Counting power sets](https://www.codewars.com/kata/counting-power-sets)
Category : algorithms

### Description
In this kata, you must create a function `powers` that takes an array, and returns the number of subsets possible to create from that list. In other words, counts the power sets.

For instance
```coffeescript
powers([1,2,3]) => 8
```

...due to...
```coffeescript
powerSet([1,2,3]) =>
[[],
 [1],
 [2],
 [3],
 [1,2],
 [2,3],
 [1,3],
 [1,2,3]]
```

Your function should be able to count sets up to the size of 500, so watch out; pretty big numbers occur there!

For comparison, my Haskell solution can compute the number of sets for an array of length 90 000 in less than a second, so be quick!

You should treat each array passed as a set of unique values for this kata.

-----
###Examples:
```coffeescript
powers([])        => 1
powers([1])       => 2
powers([1,2])     => 4
powers([1,2,3,4]) => 16
```
```java
Powers.powers(new int[]{});        // 1
Powers.powers(new int[]{1});       // 2
Powers.powers(new int[]{1,2});     // 4
Powers.powers(new int[]{1,2,3,4}); // 16
```
-----
Inspired by [this kata](http://www.codewars.com/kata/by-the-power-set-of-castle-grayskull) by [xcuthulu](http://www.codewars.com/users/xcthulhu) - refer to it if you're stuck!

### Tags
Algorithms; Sets; Arrays; Data Types; Permutations; Logic

- - -
