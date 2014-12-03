## The 'if' function
[The 'if' function](https://www.codewars.com/kata/the-if-function)
Category : reference

### Description
Who likes keywords? Nobody likes keywords, so why use them?

You know what keyword I use too much? `if`! We should __make a function__ called `_if`, with its __arguments as a logical test and two functions/lambdas where the first function is executed if the boolean is true, and the second if it's false__, like an if/else statement, so that we don't have to mess around with those nasty keywords! Even so, __It should support truthy/falsy types__ just like the keyword.

###Example:
```javascript
_if(true, function(){console.log("True")}, function(){console.log("false")})
// Logs 'True' to the console.
```

```ruby
_if(true, proc{puts "True"}, proc{puts "False"})
# Logs 'True' to the console.
```

```python
def truthy(): print("True")
def falsey(): print("False")
_if(True, truthy, falsey)
# Prints 'True' to the console.
```

### Tags
Fundamentals; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions; Functions; Control Flow; Basic Language Features

- - -
