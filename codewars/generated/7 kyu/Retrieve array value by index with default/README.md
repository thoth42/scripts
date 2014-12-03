## Retrieve array value by index with default
[Retrieve array value by index with default](https://www.codewars.com/kata/retrieve-array-value-by-index-with-default)
Category : reference

### Description
Complete the solution. It should try to retrieve the value of the array at the index provided. If the index is out of the array's max bounds then it should return the default value instead. 

Example:
```ruby
data = ['a', 'b', 'c']
solution(data, 1, 'd') # should == 'b'
solution(data, 5, 'd') # should == 'd'

# negative values work as long as they aren't out of the length bounds
solution(data, -1, 'd') # should == 'c'
solution(data, -5, 'd') # should == 'd'
```

### Tags
Fundamentals; Arrays; Data Types

- - -
