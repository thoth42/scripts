## Ruby Enumerator Methods - Part 1
[Ruby Enumerator Methods - Part 1](https://www.codewars.com/kata/ruby-enumerator-methods-part-1)
Category : reference

### Description
Given the following dataset:
```ruby
data = [
  {age: 40, sex: :m},
  {age: 24, sex: :f},
  {age: 56, sex: :m},
  {age: 45, sex: :m},
  {age: 23, sex: :f} 
]
```

Finish the provided method so that it returns true if all of the items matching the sex value have ages greater than the value provided. 

*Hint:* You will need to filter the result set to the specific sex first before checking if all of those filtered results have an age value greater than the provided age_greater_than argument value.

For example:
```ruby
check_ages?(data, :f, 22) # should be true
check_ages?(data, :m, 50) # should be false
```

### Tags
Fundamentals; Arrays; Data Types

- - -
