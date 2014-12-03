## Custom attr_accessor
[Custom attr_accessor](https://www.codewars.com/kata/custom-attr-accessor)
Category : refactoring

### Description 

Some time ago, you wrote the class ```SuperFoo```.  It has only one attribute, ```data```, which is initialized as a hash:
```ruby
class SuperFoo
  attr_accessor :data

  def initialize
    @data = {}
  end
end
```
Naturally, you put things into the hash from time to time:
```
super_foo = SuperFoo.new
super_foo.data[:buzz] = "BUZZ"
super_foo.data[:buzz]
#=> "BUZZ"
```
But then you got tired of typing hash things, and made some getters and setters to make accessing ```data``` easier.
```ruby
class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}
  end

  def buzz
    @data[:buzz]
  end

  def buzz=(value)
    @data[:buzz] = value
  end

end

super_foo = SuperFoo.new
super_foo.buzz = "BUZZ"
super_foo.buzz
#=> "BUZZ"
```
That was nice for a while. But now, you have been tasked with making literally dozens of classes that inherit from ```SuperFoo```, each of which will have their own unique variables that will be stored in the ```data``` hash.  You shudder at the thought of writing your getter and setter methods over and over again, especially because you hate repeating code.

You figure there has to be a way to dynamically generate these methods...

Well, there is!

In this kata, you must write a class-level method called ```data_accessor```. It will define your "data getters and setters" for all names you pass to it. 

Basically, you are defining a custom ```attr_accessor``` method, which will let you do this:
```ruby
class SubFoo  "FIZZ"

sub_foo.pi = 3.14
sub_foo.pi
#=> 3.14

sub_foo.data
#=> {:fizz => "FIZZ", :pi => 3.14}

sub_foo.instance_variables
#=> [:@data]
```

### Tags 
Refactoring; Metaprogramming; Programming Paradigms; Advanced Language Features; Fundamentals
- - -
## Ackermann Function 
[Ackermann Function ](https://www.codewars.com/kata/ackermann-function)
Category : algorithms

### Description 

The Ackermann function is a famous function that played a big role in computability theory as the first exemple of a total computable function that is not primitive recursive.

Since then the function has been a bit simplified but is still of good use. Due to its definition in terms of extremely deep recursion it can be used as a benchmark of a compiler's ability to optimize recursion. 

The goal of this kata is to code a function wich will be given two input, m and n, and will return the Ackermann number A(m,n) defined by:

```
A(m,n) = n+1                          if m=0  
A(m,n) = A(m-1,1)                     if m>0 , n=0
A(m,n) = A(m-1,A(m,n-1))              if m,n > 0
```

m,n should be non-negative integers, the function should return null (Javascript), None (Python), or nil (Ruby) for other type, non-integer and negative numbers.

### Tags 
Algorithms; Mathematics; Logic; Numbers; Recursion; Computability Theory; Theoretical Computer Science
- - -
## Making Change
[Making Change](https://www.codewars.com/kata/making-change)
Category : algorithms

### Description 

Write a method 
make_change that will determine the minimum number of coins needed to make change for a given amount in American currency.

Coins used will be half-dollars, quarters, dimes, nickels, and pennies, worth 50¢, 25¢, 10¢, 5¢ and 1¢, respectively. They'll be represented by the symbols 
:H, 
:Q, 
:D, 
:N and 
:P. 

The argument passed in will be an integer representing the value in cents. The return value should be a hash with the symbols as keys, and the numbers of coins as values. Coins that are not used should not be included in the hash. If the argument passed in is 0, then the method should return an empty hash.For example:

```ruby
make_change(0)
# => {}

make_change(1)
# => {:P=>1}

make_change(43)
# => {:Q=>1, :D=>1, :N=>1, :P=>3}

make_change(91)
# => {:H=>1, :Q=>1, :D=>1, :N=>1, :P=>1}
```

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Guess the number!
[Guess the number!](https://www.codewars.com/kata/guess-the-number-1)
Category : games

### Description 

The `Guesser` class is set up to generate a random number from 1-1000, and allows 10 guesses to get the number.

Your task is to write a method '`get_number`' (`Guesser.prototype.getNumber()` in javascript) inside the `Guesser` class to identify a random number from 1-1000.

You should use the method:
```ruby
guess number
```
```javascript
this.guess(number)
```
Which will return either:
```
"Too high!" If the guess is too high.
"Too low!" If the guess is too low.
or "Correct!" If the guess is correct.
```

You can only call this method 10 times before an exception is raised.

### Tags 
Puzzles; Numbers; Data Types
- - -
## Create a String for values within a given Range from a Hash
[Create a String for values within a given Range from a Hash](https://www.codewars.com/kata/create-a-string-for-values-within-a-given-range-from-a-hash)
Category : reference

### Description 

Complete the solution so that it returns a String in the format:


"Key (Value), Key (Value)"

From a hash for values within the given range, sorted by value lowest to highest.

For example:
```ruby
food = {
  "Hamburger"=>1.99,
  "Cheese"=>0.99,
  "Steak"=>4.99,
  "Lobster"=>7.99,
  "Fries"=>1.49,
  "Sandwich"=>2.49
}

list_in_range(food, (0.99..1.99)) # should return "Cheese (0.99), Fries (1.49), Hamburger (1.99)"
```
or
```ruby
list_in_range({"Zero"=>0, "Three"=>3, "One"=>1, "Eleven"=>11}, (1..10)) # should return "One (1), Three (3)"
```

### Tags 
Fundamentals; Sorting; Algorithms; Logic; Mapping; Filtering; Ranges; Basic Language Features
- - -
## Dragon's Curve
[Dragon's Curve](https://www.codewars.com/kata/dragons-curve)
Category : algorithms

### Description 

The dragon's curve is a self-similar fractal which can be obtained by a recursive method. 

Starting with the string `D0 = 'Fa'`, at each step simultaneously perform the following operations:

```
replace 'a' with: 'aRbFR'
replace 'b' with: 'LFaLb'
```

For example (spaces added for more visibility) : 

```
1st iteration: Fa -> F aRbF R
2nd iteration: FaRbFR -> F aRbFR R LFaLb FR
```

After `n` iteration, remove `'a'` and `'b'`. You will have a string with `'R'`,`'L'`, and `'F'`. This is a set of instruction. Starting at the origin of a grid looking in the `(0,1)` direction, `'F'` means a step forward, `'L'` and `'R'` mean respectively turn left and right. After executing all instructions, the trajectory will give a beautifull self-replicating pattern called 'Dragon Curve'

The goal of this kata is to code a function wich takes one parameter `n`, the number of iterations needed and return the string of instruction as defined above. For example: 

```
n=0, should return: 'F'
n=1, should return: 'FRFR'
n=2, should return: 'FRFRRLFLFR'
```

`n` should be a number and non-negative integer. All other case should return the empty string: `''`.

### Tags 
Algorithms; Mathematics; Logic; Numbers; Recursion; Computability Theory; Theoretical Computer Science
- - -
## A String of Sorts
[A String of Sorts](https://www.codewars.com/kata/a-string-of-sorts)
Category : algorithms

### Description 

Define a method that accepts 2 strings as parameters. The method returns the first string sorted by second.

```ruby
sort_string('foos', 'of')
# => 'oofs'

sort_string('string', 'gnirts')
# => 'gnirts'

sort_string('banana', 'abn')
# => 'aaabnn'
```

To elaborate, the second parameter defines the ordering. It is possible that the second parameter characters repeat, so you should remove repeating characters, leaving only the first occurrence.

Any character that does not appear in the second parameter should be sorted to the end of the result in the same order they appear in the ordering string.

### Tags 
Algorithms; Strings; Data Types; Sorting; Logic
- - -
## Is a number prime?
[Is a number prime?](https://www.codewars.com/kata/is-a-number-prime)
Category : algorithms

### Description 

# Is Prime
Define a function `isPrime` that takes one integer argument and returns `true` or `false` depending on if the integer is a prime.

Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

## Example
```ruby
isPrime(5)
=> true
```

## Assumptions
* You can assume you will be given an integer input.
* You can not assume that the integer will be only positive. You may be given negative numbers.

### Tags 
Algorithms; Mathematics; Logic; Numbers; Data Types
- - -
## Grouping and Counting 
[Grouping and Counting ](https://www.codewars.com/kata/grouping-and-counting)
Category : reference

### Description 

Your goal is to write the group_and_count method, which should receive and array as unique parameter and return a hash. Empty or nil input must return nil instead of a hash.
This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Example usage:
```ruby
input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
```

The following methods were disabled:
```
Array#count
Array#length
```

### Tags 
Fundamentals; Arrays; Data Types; Hashes; Data Structures
- - -
## Head, Tail, Init and Last
[Head, Tail, Init and Last](https://www.codewars.com/kata/head-tail-init-and-last)
Category : reference

### Description 

Haskell has some useful functions for dealing with lists:

```haskell
$ ghci
GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
λ head [1,2,3,4,5]
1
λ tail [1,2,3,4,5]
[2,3,4,5]
λ init [1,2,3,4,5]
[1,2,3,4]
λ last [1,2,3,4,5]
5
```

Your job is to implement these functions in your given language. Make sure it doesn't edit the array; that would cause problems! Here's a cheat sheet:

```haskell
| HEAD |  |
[  1,  2,  3,  4,  5,  6,  7,  8,  9,  10]
|  | LAST |

head [x] = x
tail [x] = []
init [x] = []
last [x] = x
```
Here's how I expect the functions to be called in your language:

```coffeescript
head [1,2,3,4,5] => 1
tail [1,2,3,4,5] => [2,3,4,5]
```
```javascript
head([1,2,3,4,5]); => 1
tail([1,2,3,4,5]); => [2,3,4,5]
```
```python
head([1,2,3,4,5]) => 1
tail([1,2,3,4,5]) => [2,3,4,5]
```
```ruby
head [1,2,3,4,5] => 1
tail [1,2,3,4,5] => [2,3,4,5]
```
```clojure
(head [1,2,3,4,5]) => 1
(tail [1,2,3,4,5]) => [2,3,4,5]
```
```haskell
head [1,2,3,4,5] => 1
tail [1,2,3,4,5] => [2,3,4,5]
```

---

_Most tests consist of 100 randomly generated arrays, each with four tests, one for each operation. There are 400 tests overall. No empty arrays will be given. Haskell has QuickCheck tests_

__PLEASE NOTE:__ Clojure's `last` function shall be called `last_` to prevent name clashes.

### Tags 
Fundamentals; Arrays; Data Types; Ranges; Basic Language Features; Lists; Data Structures
- - -
## Name That Integer
[Name That Integer](https://www.codewars.com/kata/name-that-integer)
Category : reference

### Description 

Write a method 
detect_int that returns the first positive integer for which an arbitrary number of lambdas returns true. If no arguments are passed in, then 
detect_int should return 
1.

For example:lam1 = lambda { |x| x > 9 }
lam2 = lambda { |x| x**0.5 % 1 == 0 }

detect_int
  # => 1
detect_int lam1
  # => 10
detect_int lam2
  # => 1
detect_int lam1, lam2
  # => 16

The testing rubric will never ask for a number that does not exist, e.g., 
detect_int(lambda { |x| x.odd? }, lambda { |x| x.even? }).

Note that loops constructed using the 
loop { block } syntax are limited to 5000 iterations, but solutions will not be constrained to integers less than 5000.

### Tags 
Fundamentals; Lambdas; Functional Programming; Functions; Declarative Programming; Programming Paradigms; Control Flow; Basic Language Features
- - -
## Ping-Pong service problem
[Ping-Pong service problem](https://www.codewars.com/kata/ping-pong-service-problem)
Category : algorithms

### Description 

Playing ping-pong can be **really fun**! 
Unfortunatelly after a long and exciting play you can forget who's service turn it is. Let's do something about that!

Write a function that takes the **current score** as a string separated by ```:``` sign as an only parameter and returns ```"first"``` or ```"second"``` depending on whose service turn it is.

We're playg old-school, so the rule is that players take turn after every 5 services. That is until the score is 20:20 - from that moment each player serves 2 times in his turn. 

Examples:
```
service("0:0") // => "first"
service("3:2") // => "second"
service("21:20") // => "first"
service("21:22") // => "second"
```

There's no need to check if the passed parameter is valid - the score will be always provided in correct syntax and you don't need to check if one of the players has already won - that won't be the case.

P.S. The game ends when one of the players reaches 21 points with minimum 2-point lead. If there's a current score of 20:20, the winner will be the first player to reach 2-point lead.

### Tags 
Algorithms; Logic
- - -
## Reverse linked list
[Reverse linked list](https://www.codewars.com/kata/reverse-linked-list)
Category : algorithms

### Description 

Let's say we have a singly linked list.
Emtpy list is represented by `null`.
Non-empty list is represented by 2-element array `[value, tail]`.

So for example list with values 1, 2, 3 would be represented as `[1, [2, [3, null]]]`.

Your job is to develop function `reverseList` which returns elements of given list in reverse order without modification of the original list.

P.S. Make sure your solution works on huge lists.

### Tags 
Algorithms; Logic; Lists; Data Structures; Data Types
- - -
## Array Helpers
[Array Helpers](https://www.codewars.com/kata/array-helpers)
Category : reference

### Description 

This kata is designed to test your ability to extend the functionality of built-in ruby classes.  In this case, we want you to extend the built-in Array class with the following methods: `square()`, `cube()`, `average()`, `sum()`, `even()` and `odd()`.

Explanation:

* square() must return a copy of the array, containing all values squared, the original array must not be changed
* cube() must return a copy of the array, containing all values cubed, the original array must not be changed
* average() must return the average of all array values, average() on an empty array must return NaN
* sum() must return the sum of all array values
* even() must return an array of all even numbers, the original array must not be changed
* odd() must return an array of all odd numbers, the original array must not be changed

Examples:
```javascript
var numbers = [1, 2, 3, 4, 5];
numbers.square(); // must return [1, 4, 9, 16, 25]
numbers.cube(); // must return [1, 8, 27, 64, 125]
numbers.average(); // must return 3
numbers.sum(); // must return 15
numbers.even(); // must return [2, 4]
numbers.odd(); // must return [1, 3, 5]
```
```ruby
numbers = [1, 2, 3, 4, 5]

numbers.square()  # must return [1, 4, 9, 16, 25]
numbers.cube()    # must return [1, 8, 27, 64, 125]
numbers.average() # must return 3
numbers.sum()     # must return 15
numbers.even()    # must return [2, 4]
numbers.odd()     # must return [1, 3, 5]
```

### Tags 
Fundamentals; Arrays; Data Types; Prototypes
- - -
## Convert a String to a Number!
[Convert a String to a Number!](https://www.codewars.com/kata/convert-a-string-to-a-number)
Category : reference

### Description 

Note: This kata is inspired by [Convert a Number to a String!](http://www.codewars.com/kata/convert-a-number-to-a-string/). Try that one too.

## Description

We need a function that can transform a string into a number. What ways of achieving this do you know?

Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.

## Examples
```haskell
stringToNumber "1234" == 1234
stringToNumber "605"  == 605
stringToNumber "1405" == 1405
stringToNumber "-7"   == -7
```

```clojure
(stringToNumber "1234") => 1234
(stringToNumber "605")  => 605
(stringToNumber "1405") => 1405
(stringToNumber "-7")   => -7
```
```javascript
stringToNumber("1234") == 1234
stringToNumber("605" ) == 605
stringToNumber("1405") == 1405
stringToNumber("-7"  ) == -7
```
```coffeescript
stringToNumber "1234"  == 1234
stringToNumber "605"   == 605
stringToNumber "1405"  == 1405
stringToNumber "-7"    == -7
```
```python
stringToNumber("1234") == 1234
stringToNumber("605" ) == 605
stringToNumber("1405") == 1405
stringToNumber("-7"  ) == -7
```
```ruby
string_to_number "1234"  == 1234
string_to_number "605"   == 605
string_to_number "1405"  == 1405
string_to_number "-7"    == -7
```

### Tags 
Fundamentals; Parsing; Algorithms; Logic; Strings; Data Types
- - -
## Last
[Last](https://www.codewars.com/kata/last)
Category : reference

### Description 

Find the last element of a list.

Example:
```ruby
last( [1,2,3,4] ) # => 4
last( "xyz" ) # => z
last( 1,2,3,4 ) # => 4
```

### Tags 
Fundamentals; Lists; Data Structures
- - -
## Summing  a number's digits
[Summing  a number's digits](https://www.codewars.com/kata/summing-a-numbers-digits)
Category : reference

### Description 

Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.  For example:

```javascript
  sumDigits(10);  // Returns 1
  sumDigits(99);  // Returns 18
  sumDigits(-32); // Returns 5
```
```ruby
  sumDigits 10    # Returns 1
  sumDigits 99    # Returns 18
  sumDigits -32   # Returns 5
```
```python
  sumDigits(10)  # Returns 1
  sumDigits(99)  # Returns 18
  sumDigits(-32) # Returns 5
```
```coffeescript
  sumDigits 10     # Returns 1
  sumDigits 99     # Returns 18
  sumDigits -32    # Returns 5
```

Let's assume that all numbers in the input will be integer values.

### Tags 
Fundamentals; Arithmetic; Mathematics; Algorithms; Logic; Numbers
- - -
## Atbash Cipher Helper
[Atbash Cipher Helper](https://www.codewars.com/kata/atbash-cipher-helper)
Category : algorithms

### Description 

The Atbash cipher is a simple substitution cipher originally known to be implemented using the Hebrew alphabet (אתבש, aleph-tav-beth-shin). The Atbash cipher is particularly well-known for its use in the Bible. [It was in use as early as 500BC by scribes writing the Book of Jeremiah.](http://mysteriouswritings.com/the-atbash-cipher-and-jeremiah-511/)

In the Atbash cipher, the first letter of the alphabet is substituted with the last letter, the second letter with the second to last letter, and so on.

For the Latin alphabet, this could be mapped as:

    A|B|C|D|E|F|G|H|I|J|K|L|M
    Z|Y|X|W|V|U|T|S|R|Q|P|O|N

For the Hebrew alphabet:

    א|ב|ג|ד|ה|ו|ז|ח|ט|י|כ
    ת|ש|ר|ק|צ|פ|ע|ס|נ|מ|ל

*When viewing Hebrew text:*

* This is about **viewing** the text and should have no impact on your code. It may, however, help you with debugging text.
* I assume that your computer will display the characters properly.
* Hebrew is written right-to-left, such that: 
"א|ב".charAt(0) == "א".
* There are alternate forms of some letters in Hebrew (e.g. final forms) that aren't listed here. You won't need to worry about them for this Kata.

Your solution should support any alphabet provided to the constructor, and should leave characters that are not in the specified alphabet in situ.

### Tags 
Algorithms; Logic; Ciphers; Cryptography; Security; Objects; Data Types; Classes; Basic Language Features; Object-oriented Programming; Fundamentals; Programming Paradigms; Strings
- - -
## Validate Credit Card Number
[Validate Credit Card Number](https://www.codewars.com/kata/validate-credit-card-number)
Category : algorithms

### Description 

In this Kata, you will implement [The Luhn Algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm), which is used to help validate credit card numbers.

Given a positive integer of up to 16 digits, return ```true``` if it is a valid credit card number, and ```false``` if it is not.

Here is the algorithm:
  
  1.  If there are an even number of digits, double every other digit starting with the first, and if there are an odd number of digits, double every other digit starting with the second.  Another way to think about it is, from the right to left, double every other digit starting with the second to last digit. 
    ```
      1714 => [1*, 7, 1*, 4] => [2, 7, 2, 4]
      
      12345 => [1, 2*, 3, 4*, 5] => [1, 4, 3, 8, 5]
      
      891 => [8, 9*, 1] => [8, 18, 1]
    ```
  2. If a resulting doubled number is greater than 9, replace it with either the sum of it's own digits, or 9 subtracted from it.
    ```
      [8, 18*, 1] => [8, (1+8), 1] => [8, 9, 1]
      
      (or)
      
      [8, 18*, 1] => [8, (18-9), 1] => [8, 9, 1]
    ```
  3. Sum all of the final digits
    ```
      [8, 9, 1] => 8+9+1 => 18
    ```
  4. Finally, take that sum and divide it by 10.  If the remainder equals zero, the original credit card number is valid.
    ```
      18 (modulus) 10 => 8.  
      
      8 does not equal 0, so 891 is not a valid credit card number.
    ```

### Tags 
Algorithms; Logic
- - -
## Change Machine
[Change Machine](https://www.codewars.com/kata/change-machine)
Category : algorithms

### Description 

Implement a `change` function that performs at O(n) (we will test for this).

The function will accept an integer parameter that represents cents, and returns the optimal change using the least number of coins.

The function should return a hash containing a key for each coin of US currency (specifically 25¢ 10¢ 5¢ and 1¢ coins -- don't use 50¢ or 100¢ coins).  The value of each coin should represent the count of each coin in the change.

The function should return a hash with all coin count values set to 0 if the `cents` parameter is less than or equal to 0.

```ruby
change(31)
# => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 } 
```

### Tags 
Algorithms; Logic; Performance
- - -
## Sherlock on numbers
[Sherlock on numbers](https://www.codewars.com/kata/sherlock-on-numbers)
Category : algorithms

### Description 

Sherlock has to find suspect on his latest case. He will use your method, dear Watson. The suspect in this case is a number which is most unique in given set, e.g.:

- has least (minimum) occurences in set 
- and no other number has the same occurences count

Write method which helps Sherlock to find suspect from given set of numbers. If no suspect is found the method should return nil.


```ruby
find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) # => 3
find_suspect(1, 1, 2, 2) # => nil
find_suspect(1, 1, 2, 2, 2) # => 1
find_suspect(1, 2, 3, 4, 4, 3) # => nil
```

### Tags 
Algorithms; Numbers; Data Types; Integers; Arrays
- - -
## Christmas Day
[Christmas Day](https://www.codewars.com/kata/christmas-day)
Category : reference

### Description 

Sometimes it's useful to know on which day of week the holly holiday will occur.


But just don't limit ourselves to this year and write a function which consumes a Christmas date and outputs a name of weekday. 



**Example:**

```javascript
findOutChristmasWeekday('2013 12 25') // returns 'Wednesday'
```

```coffeescript
findOutChristmasWeekday('2013 12 25') # returns 'Wednesday'
```

```ruby
find_out_christmas_weekday('2013 12 25') # returns 'Wednesday'
```

Only valid Christmas dates will be passed to the function.



Date parameter could be a string or a Date object. If it's a string here are possible date parameter formats:

```javascript
'2013 12 25'
'12 25 2013'
'25 December 2013'
```

Note: calendar used in the kata is Gregorian.

### Tags 
Fundamentals; Hacking Holidays; Dates/Time; Data Types
- - -
## Find the Capitals
[Find the Capitals](https://www.codewars.com/kata/find-the-capitals)
Category : reference

### Description 

Write a method that takes an array of hashes with two keys each: country or state, and capital. Keys may be symbols or strings

The method should return an array of sentences declaring the state or country and its capital.

Examples
```ruby
state_capitals = [{state: 'Maine', capital: 'Augusta'}]
capital(state_capitals)[0] # returns "The capital of Maine is Augusta"

country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
capital(country_capitals)[0] # returns "The capital of Spain is Madrid"

mixed_capitals: [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
capital(mixed_capitals)[0] # returns "The capital of Maine is Augusta"
```
```javascript
state_capitals = [{state: 'Maine', capital: 'Augusta'}]
capital(state_capitals)[0] # returns "The capital of Maine is Augusta"

country_capitals = [{'country' : 'Spain', 'capital' : 'Madrid'}]
capital(country_capitals)[0] # returns "The capital of Spain is Madrid"

mixed_capitals: [{"state" : 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" : "Madrid"}]
capital(mixed_capitals)[1] # returns "The capital of Spain is Madrid"
```

### Tags 
Fundamentals; Hashes; Data Structures
- - -
## Custom Array Filters
[Custom Array Filters](https://www.codewars.com/kata/custom-array-filters)
Category : reference

### Description 

Dave has a lot of data he is required to apply filters to, which are simple enough, but he wants a shorter way of doing so.

He wants the following functions to work as expected:
```ruby
even # [1,2,3,4,5].even should return [2,4]
odd # [1,2,3,4,5].odd should return [1,3,5]
under # [1,2,3,4,5].under(4) should return [1,2,3]
over # [1,2,3,4,5].over(4) should return [5]
in_range # [1,2,3,4,5].in_range(1..3) should return [1,2,3]
```
```javascript
even    // [1,2,3,4,5].even() should return [2,4]
odd     // [1,2,3,4,5].odd() should return [1,3,5]
under   // [1,2,3,4,5].under(4) should return [1,2,3]
over    // [1,2,3,4,5].over(4) should return [5]
inRange // [1,2,3,4,5].inRange(1,3) should return [1,2,3]
```
```python
even # list([1,2,3,4,5]).even() should return [2,4]
odd # list([1,2,3,4,5]).odd() should return [1,3,5]
under # list([1,2,3,4,5]).under(4) should return [1,2,3]
over # list([1,2,3,4,5]).over(4) should return [5]
in_range # list([1,2,3,4,5]).in_range(1, 3) should return [1,2,3]
```
They should also work when used together, for example:
```ruby
(1..100).to_a.even.in_range(18..30) # should return [18, 20, 22, 24, 26, 28, 30]
```
```javascript
[1,2,18,19,20,21,22,30,40,50,100].even().inRange(18,30) // should return [18, 20, 22, 30]
```
```python
list(list([1,2,3,4,5,6,7,8,9,10]).even()).under(5) # should return [2,4]
```

And finally the filters should only accept integer values from an array, for example:
```ruby
["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even # should return [300, 122]
```
```javascript
["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even() // should return [300, 122]
```
```python
list(["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11]).even() // should return [300, 122]
```

### Tags 
Fundamentals; Utilities; Arrays; Data Types
- - -
## Function Composition
[Function Composition](https://www.codewars.com/kata/function-composition)
Category : reference

### Description 

__Function composition__ is a mathematical operation that mainly presents itself in lambda calculus and computability. It is explained well [here](http://www.mathsisfun.com/sets/functions-composition.html), but this is my explanation, in simple mathematical notation:

```
f3 = compose( f1 f2 )
   Is equivalent to...
f3(a) = f1( f2( a ) )
```

Your task is to create a `compose` function to carry out this task, which will be passed two functions or lambdas. Ruby functions will be passed, and should return, either a proc or a lambda. Remember that the resulting composed function may be passed multiple arguments!

```javascript
compose(f , g)(x)
=> f( g( x ) )
```
```ruby
compose(f , g).(x)
=> f.( g.( x ) )
```
```coffeescript
compose(f , g)(x)
=> f( g( x ) )
```
```clojure
((compose f  g) x)
=> (f (g x) )
```
```python
compose(f , g)(x)
=> f( g( x ) )
```


This kata is not available in haskell; that would be too easy!

### Tags 
Fundamentals; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions; Functions; Control Flow; Basic Language Features; Lambdas; Composition; Design Principles
- - -
## Simple elevator
[Simple elevator](https://www.codewars.com/kata/simple-elevator)
Category : reference

### Description 

There is a house with 4 levels.
In that house there is an elevator.
You can program this elevator to go up or down,
depending on what button the user touches inside the elevator.

levels can be only numbers: `0,1,2,3`
buttons can be strings: `'0','1','2','3'`
possible return values are numbers: `-3,-2,-1,0,1,2,3`

If the elevator is on the ground floor(0th level) 
and the user touches button '2'
the elevator must go 2 levels up,
so our function must return 2.

If the elevator is on the 3rd level
and the user touches button '0'
the elevator must go 3 levels down, so our function must return -3.

If the elevator is on the 2nd level,
and the user touches button '2'
the elevator must remain on the same level,
so we return 0.

We cannot endanger the lives of our passengers, 
so if we get erronous inputs, 
our elevator must remain on the same level.
So for example:

- `goto(2,'4')` must return 0, because there is no button '4' in the elevator.
- `goto(4,'0')` must return 0, because there is no level 4.
- `goto(3,undefined)` must return 0.
- `goto(undefined,'2')` must return 0.
- `goto([],'2')` must return 0 because the type of the input level is array instead of a number.
- `goto(3,{})` must return 0 because the type of the input button is object instead of a number.

### Tags 
Fundamentals; State Machines; Computational Science; Theoretical Computer Science; Design Patterns
- - -
## List Filtering
[List Filtering](https://www.codewars.com/kata/list-filtering)
Category : reference

### Description 

In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

### Example

```python
filter_list([1,2,'a','b']) == [1,2]
filter_list([1,'a','b',0,15]) == [1,0,15]
filter_list([1,2,'aasf','1','123',123]) == [1,2,123]
```

### Tags 
Fundamentals; Lists; Data Structures; Filtering; Algorithms; Logic
- - -
## Jaden Casing Strings
[Jaden Casing Strings](https://www.codewars.com/kata/jaden-casing-strings)
Category : reference

### Description 

Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for [some of his philosophy that he delivers via Twitter](https://twitter.com/officialjaden). When writing on Twitter, he is known for almost always capitalizing every word.

Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

Example:

    Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
    Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

### Tags 
Fundamentals; Strings; Data Types; Arrays
- - -
## Power of two
[Power of two](https://www.codewars.com/kata/power-of-two)
Category : reference

### Description 

Write a body of function power_of_two?(x) (javascript `isPowerOfTwo`) which has to return `true` if the given natural number is power of 2 or `false` if the number is not power of 2. The given number is **always greater than 0**.
```ruby
power_of_two?(4096) # true

power_of_two?(333) # false
```
```javascript
isPowerOfTwo(4096) // -> true

isPowerOfTwo(333)  // -> false
```

### Tags 
Fundamentals; Mathematics; Algorithms; Logic; Numbers
- - -
## Sum of all arguments
[Sum of all arguments](https://www.codewars.com/kata/sum-of-all-arguments)
Category : reference

### Description 

Write a function that finds the sum of all its arguments.

eg:
```javascript
sum(1, 2, 3) // => 6
sum(8, 2) // => 10
sum(1, 2, 3, 4, 5) // => 15
```
```python
sum(1, 2, 3) # => 6
sum(8, 2) # => 10
sum(1, 2, 3, 4, 5) # => 15
```
```coffeescript
sum 1, 2, 3 # => 6
sum 8, 2 # => 10
sum 1, 2, 3, 4, 5 # => 15
```
```ruby
sum 1, 2, 3 # => 6
sum 8, 2 # => 10
sum 1, 2, 3, 4, 5 # => 15
```
```clojure
(sum 1 2 3) ; => 6
(sum 8 2) ; => 10
(sum 1 2 3 4 5) ; => 15
```
-----

Note that Python's function name is `sum_args`, as to avoid confusion with the preexistsing `sum` function. Ruby's `Array#sum` has been removed to make it a bit more interesting!

-----
##### TIPS: 
ruby/python : http://lmgtfy.com/?q=Ruby+splat+operator

JS/Coffeescript : http://lmgtfy.com/?q=Javascript+arguments+variable

### Tags 
Fundamentals; Declarative Programming; Programming Paradigms; Arguments; Basic Language Features; Arithmetic; Mathematics; Algorithms; Logic; Numbers
- - -
## Unpacking Arguments
[Unpacking Arguments](https://www.codewars.com/kata/unpacking-arguments)
Category : reference

### Description 

You must create a function, `spread`, that takes a function and a list of arguments to be applied to that function. You must make this function return the result of calling the given function/lambda with the given arguments.

eg:
```javascript
spread(someFunction, [1, true, "Foo", "bar"] ) 
// is the same as...
someFunction(1, true, "Foo", "bar")
```
```clojure
(spread someFunction [1 true "Foo" "bar"] ) 
; is the same as...
(someFunction 1 true "Foo" "bar")
```
```coffeescript
spread someFunction, [1, true, "Foo", "bar"] 
# is the same as...
someFunction 1, true, "Foo", "bar" 
```
```python
spread(someFunction, [1, true, "Foo", "bar"] ) 
# is the same as...
someFunction(1, true, "Foo", "bar")
```
```ruby
spread someFunction, [1, true, "Foo", "bar"] 
# is the same as...
someFunction.(1, true, "Foo", "bar")
```

### Tags 
Fundamentals; Arguments; Basic Language Features; Declarative Programming; Programming Paradigms; Functions; Control Flow; Lambdas; Functional Programming; Higher-order Functions
- - -
## Digitize
[Digitize](https://www.codewars.com/kata/digitize)
Category : algorithms

### Description 

Given a non-negative integer, return an array / a list of the individual digits in order.

Examples:

```
123 => [1,2,3]

1 => [1]

8675309 => [8,6,7,5,3,0,9]
```

### Tags 
Algorithms; Lists; Data Structures; Numbers; Data Types; Parsing; Logic; Strings
- - -
## Arithmetic List!
[Arithmetic List!](https://www.codewars.com/kata/arithmetic-list)
Category : reference

### Description 

In this kata, you will write an arithmetic list which is basically a list that contains consecutive terms in the sequence.



You will be given three parameters :*`first` the first term in the sequence

    
*`c` the constant that you are going to 
**ADD**
 ( since it is an arithmetic sequence...)

    
*`l` the number of terms that should be `return`ed
Useful link:



[Sequence](http://en.wikipedia.org/wiki/Sequence)

Be sure to check out my

[Arithmetic sequence](http://www.codewars.com/kata/540f8a19a7d43d24ac001018) Kata first ;)


Don't forget about the indexing pitfall ;)

### Tags 
Fundamentals; Arrays; Data Types
- - -
## Hashtaggery
[Hashtaggery](https://www.codewars.com/kata/hashtaggery)
Category : reference

### Description 

Define a new instance method on the Ruby `string` class called `hashtags`.

It returns an array of all alphanumeric hashtagged words in a string. A string with no hashtagged words should return an empty array.

Character case sensitivity is not important in this kata.

```ruby
'this #word is #hashtagged'.hashtags
# => ['#word', '#hashtagged']
```

A string with words with underscores can still be considered a hashtag.

```ruby
'this #word_is hashtagged'.hashtags
# => ['#word_is']
```

A single hashtag should not be considered a hashtagged word.

```ruby
'# this #word is hashtagged'
# => ['#word']
```

### Tags 
Fundamentals; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Strings; Data Types; Parsing; Algorithms; Logic
- - -
## Breaking chocolate problem
[Breaking chocolate problem](https://www.codewars.com/kata/breaking-chocolate-problem)
Category : algorithms

### Description 

Your task is to split the chocolate bar of given dimension `n` x `m` into small squares.
Each square is of size 1x1 and unbreakable.
Implement a function that will return minimum number of breaks needed.

For example if you are given a chocolate bar of size `2` x `1` you can split it to single squares in just one break, but for size `3` x `1` you must do two breaks.

If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.

### Tags 
Algorithms; Logic; Numbers; Data Types
- - -
## Remove Duplicates
[Remove Duplicates](https://www.codewars.com/kata/remove-duplicates)
Category : reference

### Description 

# Remove Duplicates

You are to write a function called `unique` that takes an array of integers and returns the array with duplicates removed. It must return the values in the same order as first seen in the given array. Thus no sorting should be done, if 52 appears before 10 in the given array then it should also be that 52 appears before 10 in the returned array.

## Assumptions

* All values given are integers (they can be positive or negative).
* You are given an array but it may be empty.
* They array may have duplicates or it may not.
* You cannot use the `uniq` method on Arrays (don't even try it).

## Example

```ruby
puts unique([1, 5, 2, 0, 2, -3, 1, 10]).inspect
[1, 5, 2, 0, -3, 10]

puts unique([]).inspect
[]

puts unique([5, 2, 1, 3]).inspect
[5, 2, 1, 3]
```
```coffeescript
unique([1, 5, 2, 0, 2, -3, 1, 10])
# -> [1, 5, 2, 0, -3, 10]

unique([])
# -> []

unique([5, 2, 1, 3])
# -> [5, 2, 1, 3]
```

```java
UniqueArray.unique([1, 5, 2, 0, 2, -3, 1, 10]) 
// -> [1, 5, 2, 0, -3, 10]
```


## What We Are Testing

We are testing basic array usage and knowledge. There are many ways to solve this and advanced users may find faster ways to solve this.

### Tags 
Fundamentals; Arrays; Data Types
- - -
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
## Arithmetic Sequence!
[Arithmetic Sequence!](https://www.codewars.com/kata/arithmetic-sequence)
Category : reference

### Description 

A sequence is usually a set or an array of numbers that has a strict way for moving from the nth term to the (n+1)th term.


If ``f(n) = f(n-1) + c`` where ``c`` is a constant value, then ``f`` is an arithmetic sequence.


An example would be (where the first term is 0 and the constant is 1) is [0, 1, 2, 3, 4, 5, ... and so on] )


Else if (pun) ``f(n) = f(n-1) * c`` where ``c`` is a constant value, then ``f`` is a geometric sequence.


Example where the first term is 2 and  the constant is 2 will be [2, 4, 8, 16, 32, 64, ... to infinity ... ]


There are some sequences that aren't arithmetic nor are they geometric.


Here is a link to feed your brain : 
[Sequence](http://en.wikipedia.org/wiki/Sequence) !


You're going to write a function that's going to return the value in the nth index of an arithmetic sequence.(That is, adding a constant to move to the next element in the "set").

The function's name is `nthterm`, it takes three inputs `first`,`n`,`c` where:

  - ``first`` is the first value in the 0 INDEX.


  - ``n`` is the index of the value we want.


  - ``c`` is the constant added between the terms.

Remember that `first` is in the index ``0`` .. just saying ...

### Tags 
Fundamentals; Mathematics; Algorithms; Logic; Numbers; Arithmetic
- - -
## A function within a function
[A function within a function](https://www.codewars.com/kata/a-function-within-a-function)
Category : reference

### Description 

Given an input n, write a function `always` that returns a __function__ which returns n. Ruby should return a __lambda__ or a __proc__.

```javascript
var three = always(3);
three(); // return s3
```
```coffeescript
three = always(3)
three() # returns 3
```
```ruby
three = always(3)
three.call # returns 3
```
```python
three = always(3)
three() /* returns 3 */
```

### Tags 
Fundamentals; Closures; Basic Language Features; Scopes
- - -
## Convert a Number to a String!
[Convert a Number to a String!](https://www.codewars.com/kata/convert-a-number-to-a-string)
Category : reference

### Description 

We need a function that can transform a number into a string.

What  ways of achieving this do you know?

#### Examples:

```javascript
numberToString(123); // returns '123';`   
numberToString(999); // returns '999';`
```
```python
number_to_string(123) /* returns '123' */
number_to_string(999) /* returns '999' */
```
```clojure
number-to-string 123 ;; returns '123'
number-to-string 999 ;; returns '999'
```

### Tags 
Fundamentals; Type Casting; Numbers; Data Types; Strings
- - -
## You Can't Code Under Pressure #1
[You Can't Code Under Pressure #1](https://www.codewars.com/kata/you-cant-code-under-pressure-number-1)
Category : reference

### Description 

Code as fast as you can! You need to double the integer and return it.

### Tags 
Fundamentals; Numbers; Data Types; Integers
- - -
## Color Ghost
[Color Ghost](https://www.codewars.com/kata/color-ghost)
Category : reference

### Description 

#Color Ghost
Create a class Ghost

Ghost objects are instantiated without any arguments.

Ghost objects are given a random color attribute of white" or "yellow" or "purple" or "red" when instantiated

```javascript
ghost = new Ghost();
ghost.color //=> "white" or "yellow" or "purple" or "red"
```
```coffeescript
ghost = new Ghost()
ghost.color #=> "white" or "yellow" or "purple" or "red"
```
```ruby
ghost = Ghost.new
ghost.color  #=> "white" or "yellow" or "purple" or "red"
```
```python
ghost = Ghost()
ghost.color  #=> "white" or "yellow" or "purple" or "red"
```
```java
Ghost ghost = new Ghost();
ghost.getColor(); //=> "white" or "yellow" or "purple" or "red"
```

### Tags 
Fundamentals; Object-oriented Programming; Programming Paradigms
- - -
## Regular Ball Super Ball
[Regular Ball Super Ball](https://www.codewars.com/kata/regular-ball-super-ball)
Category : reference

### Description 

# Regular Ball Super Ball  
Create a class Ball.

Ball objects should accept one argument for "ball type" when instantiated.

If no arguments are given, ball objects should instantiate with a "ball type" of "regular."

```javascript
ball1 = new Ball();
ball2 = new Ball("super");

ball1.ballType     //=> "regular"
ball2.ballType     //=> "super"
```
```coffeescript
ball1 = new Ball()
ball2 = new Ball("super")
ball1.ballType #=> "regular"
ball2.ballType #=> "super"
```
```ruby
ball1 = Ball.new
ball2 = Ball.new "super"
ball1.ball_type  #=> "regular"
ball2.ball_type  #=> "super"
```
```python
ball1 = Ball()
ball2 = Ball("super")
ball1.ball_type  #=> "regular"
ball2.ball_type  #=> "super"
```

### Tags 
Fundamentals; Classes; Basic Language Features; Object-oriented Programming; Programming Paradigms; Objects; Data Types
- - -
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
## Can you get the loop ?
[Can you get the loop ?](https://www.codewars.com/kata/can-you-get-the-loop)
Category : algorithms

### Description 

You are given a node that is the beginning of a linked list. This list always contains a tail and a loop.

Your objective is to determine the length of the loop.  

For example in the following picture the tail's size is 3 and the loop size is 11.![Image and video hosting by TinyPic](http://i42.tinypic.com/27wrmed.png)

```ruby
# Use the `next' method to get the following node.

node.next
```
```javascript
// Use the `getNext' method or 'next' property to get the following node.

node.getNext()
node.next
```
```python
# Use the `next' attribute to get the following node

node.next
```


> Thanks to shadchnev, I broke all of the methods from the Hash class.

> Don't miss dmitry's article in the discussion after you pass the Kata !!

### Tags 
Algorithms; Hacking Holidays; Logic
- - -
## Rot13
[Rot13](https://www.codewars.com/kata/rot13-1)
Category : reference

### Description 

ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. 
If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

Please note that using "encode" in Python is considered cheating.

### Tags 
Fundamentals; Ciphers; Algorithms; Cryptography; Logic; Security
- - -
## Array#reduce
[Array#reduce](https://www.codewars.com/kata/array-number-reduce)
Category : algorithms

### Description 

In this kata, you must define the `Array.reduce` method.

_I have disabled the pre-existing reduce methods._

Here's how it works:
```javascript
[1,2,3].reduce( function(sum, next){return sum+next}, 0) 
// => 6

['a','b','a'].reduce( function(obj, elem){if(!obj[elem]) obj[elem] = 0; obj[elem] += 1; return obj}, {})
// => {'a':2, 'b':1}
```
```ruby
[1,2,3].reduce( ->(x,y){x+y}, 0) 
# => 6
```
```coffeescript
[1 2 3].reduce((sum, next) -> sum + next , 0)
# => 6

["a" "b" "a" ].reduce ((obj, elem) ->
  obj[elem] = 0  unless obj[elem]
  obj[elem] += 1
  obj), {}
# => {'a':2, 'b':1}
```
__Summary:__ The `reduce` method goes through each element of an array, applies the function to whatever the function returned last, and returns the last outcome. On the first iteration, it should pass the `initial` value to the function, as well as the first element of the array. If no `initial` value is passed, skip to the first element of the array.

Ruby methods should expect a lambda.

### Tags 
Algorithms; Map/Reduce; Logic; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions; Functions; Control Flow; Basic Language Features; Fundamentals; Methods; Object-oriented Programming
- - -
## Sum of Digits / Digital Root
[Sum of Digits / Digital Root](https://www.codewars.com/kata/sum-of-digits-slash-digital-root)
Category : algorithms

### Description 

In this kata, you must create a `digital root` function.

A digital root is the _recursive sum of all the digits in a number._ Given _n_, take the sum of the digits of _n_. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works (Ruby example given):
```ruby
digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6
```

### Tags 
Algorithms; Mathematics; Logic; Numbers; Arithmetic
- - -
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
## Range Extraction
[Range Extraction](https://www.codewars.com/kata/range-extraction)
Category : algorithms

### Description 

A format for expressing an ordered list of integers is to use a comma separated list of either

* individual integers
* or a range of integers denoted by the starting integer separated from the end integer in the range by a dash, '-'. The range includes all integers in the interval including both endpoints.  It is not considered a range unless it spans at least 3 numbers. For example ("12, 13, 15-17")

Complete the solution  so that it takes a list of integers in increasing order and returns a correctly formatted string in the range format. 

**Example:**

```javascript
solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]);
// returns "-6,-3-1,3-5,7-11,14,15,17-20"
```

```coffeescript
solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# returns "-6,-3-1,3-5,7-11,14,15,17-20"
```

```ruby
solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# returns "-6,-3-1,3-5,7-11,14,15,17-20"
```

*Courtesy of rosettacode.org*

### Tags 
Algorithms; String Formatting; Formatting; Logic; Strings
- - -
## Roman Numerals Encoder
[Roman Numerals Encoder](https://www.codewars.com/kata/roman-numerals-encoder)
Category : algorithms

### Description 

Create a function taking a positive integer as its parameter and returning a string containing the Roman Numeral representation of that integer.

Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

Example:
```javascript
solution(1000); // should return 'M'
```
```coffeescript
solution(1000) # should return 'M'
```
```ruby
solution(1000) # should return 'M'
```
```python
solution(1000) # should return 'M'
```

Help:
```
Symbol	Value
I	      1
V	      5
X	      10
L	      50
C	      100
D	      500
M	      1,000
```

Remember that there can't be more than 3 identical symbols in a row.


More about roman numerals - http://en.wikipedia.org/wiki/Roman_numerals

### Tags 
Algorithms; Encoding; Logic
- - -
## Roman Numerals Helper
[Roman Numerals Helper](https://www.codewars.com/kata/roman-numerals-helper)
Category : algorithms

### Description 

Create a RomanNumerals helper that can convert a roman numeral to and from an integer value.  The class should follow the API demonstrated in the examples below. Multiple roman numeral values will be tested for each helper method. 

Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

Examples:
```javascript
RomanNumerals.toRoman(1000); // should return 'M'
RomanNumerals.fromRoman('M'); // should return 1000
```
```coffeescript
RomanNumerals.toRoman(1000) # should return 'M'
RomanNumerals.fromRoman('M') # should return 1000
```
```ruby
RomanNumerals.to_roman(1000) # should return 'M'
RomanNumerals.from_roman('M') # should return 1000
```

```python
RomanNumerals.to_roman(1000) # should return 'M'
RomanNumerals.from_roman('M') # should return 1000
```

### Tags 
Algorithms; Parsing; Logic; Strings; Type Conversion; Data Types
- - -
## int32 to IPv4
[int32 to IPv4](https://www.codewars.com/kata/int32-to-ipv4)
Category : algorithms

### Description 

Take the following IPv4 address:  128.32.10.1

This address has 4 octets where each octet is a single byte (or 8 bits).

* 1st octet 128 has the binary representation: 10000000
* 2nd octet 32 has the binary representation: 00100000
* 3rd octet 10 has the binary representation: 00001010
* 4th octet 1 has the binary representation: 00000001

So 128.32.10.1 == 10000000.00100000.00001010.00000001

Because the above IP address has 32 bits, we can represent it as the 32 bit number: 2149583361

Write a function `int32_to_ip(int32)` (**JS**: `int32ToIp(int32)`, **Haskell**: `int32ToIP`) that takes a 32 bit number and returns a string representation of its IPv4 address.

```ruby
  int32_to_ip(2149583361) => "128.32.10.1"
```
```javascript
  int32ToIp(2149583361) => "128.32.10.1"
```
```haskell
  int32ToIP 2149583361 => "128.32.10.1"
```

### Tags 
Algorithms; Networks; Logic; Bits; Binary; Utilities
- - -
## ASCII hex converter
[ASCII hex converter](https://www.codewars.com/kata/ascii-hex-converter)
Category : reference

### Description 

Write a module Converter that can take ASCII text and convert it to
hexadecimal. The class should also be able to take hexadecimal and
convert it to ASCII text.

Example

```ruby
Converter.to_hex("Look mom, no hands")
=> "4c6f6f6b206d6f6d2c206e6f2068616e6473"

Converter.to_ascii("4c6f6f6b206d6f6d2c206e6f2068616e6473")
=> "Look mom, no hands"
```
```javascript
Converter.toHex("Look mom, no hands")
=> "4c6f6f6b206d6f6d2c206e6f2068616e6473"

Converter.toAscii("4c6f6f6b206d6f6d2c206e6f2068616e6473")
=> "Look mom, no hands"
```

### Tags 
Fundamentals; Bits; Binary; Utilities; Data Conversion; Algorithms; Data; Logic; Strings; Data Types; ASCII; Character Encodings; Formats
- - -
## Least Common Multiple
[Least Common Multiple](https://www.codewars.com/kata/least-common-multiple)
Category : algorithms

### Description 

Write a function that calculates the *least common multiple* of its arguments; each argument is assumed to be a non-negative integer.

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Improving hashes.
[Improving hashes.](https://www.codewars.com/kata/improving-hashes)
Category : refactoring

### Description 

Hi!

Well, you probably already are familiar with hashes. But, well, I want to access hash values through a diferent way, I really do not like to use the `[]` method.

Here's how I want to access the values:

```ruby
hash = {a: 2, b: 1, c: 0.5}

hash.a # must return the same as hash[:a]
hash.b # must return the same as hash[:b]
hash.c # must return the same as hash[:c]
```

But there is some things that you may be aware:

- If the hash already has a method with the key name, the existent method must be kept (e.g. `{size: 5}.size` must return the hash size, and not the value)
- If the hash doens't include the key, you must return the that call an inexistent method in hash (e.g. `hash = {a: 1}; hash.b` must throw the `NoMethodError` exception)
- String keys should work as well (e.g. `{'a' => 'b'}.a` must return `'b'`)

Some tips:

- You must reopen the `Hash` class
- Try to do with the less code as possible

### Tags 
Refactoring; Metaprogramming; Programming Paradigms; Advanced Language Features; Fundamentals; Hashes; Data Structures
- - -
## Luck check
[Luck check](https://www.codewars.com/kata/luck-check)
Category : games

### Description 

In some countries of former Soviet Union there was a belief about lucky tickets. A transport ticket of any sort was believed to posess luck if sum of digits on the left half of its number was equal to the sum of digits on the right half. Here are examples of such numbers:
```
003111    #         3 = 1 + 1 + 1
813372    # 8 + 1 + 3 = 3 + 7 + 2
17935     #     1 + 7 = 3 + 5
56328116
```
Such tickets were either eaten after being used or collected for bragging rights.

Your task is to write a funtion ```luck_check(str)```, which returns ```true``` if argument is string decimal representation of a lucky ticket number, or ```false``` for all other numbers. It should handle errors for empty strings or strings which don't represent a decimal number

### Tags 
Puzzles; Fundamentals; Strings; Data Types; Numbers; Integers; Mathematics; Algorithms; Logic; Rules
- - -
## Simple CSS selector comparison
[Simple CSS selector comparison](https://www.codewars.com/kata/simple-css-selector-comparison)
Category : algorithms

### Description 

Cascading Style Sheets (CSS) is a style sheet language used for describing the look and formatting of a document written in a markup language. A style sheet consists of a list of rules. Each rule or rule-set consists of one or more selectors, and a declaration block. Selector describes which element it matches.

Sometimes element is matched to multiple selectors. In this case, element inherits multiple styles, from each rule it matches. Rules can override each other. To solve this problem, each selector has it's own 'specificity' - e.g. weight. The selector with greater specificity overrides the other selector.

Your task is to calculate the weights of two selectors and determine which of them will beat the other one.

```javascript
compare("body p", "div"); // returns "body p"
compare(".class", "#id"); // returns "#id"
compare("div.big", ".small"); // returns "div.big"
compare(".big", ".small"); // returns ".small" (because it appears later)
```
```coffeescript
compare "body p", "div" # returns "body p"
compare ".class", "#id" # returns "#id"
compare "div.big", ".small" # returns "div.big"
compare ".big", ".small" # returns ".small" (because it appears later)
```
```ruby
compare "body p", "div" # returns "body p"
compare ".class", "#id" # returns "#id"
compare "div.big", ".small" # returns "div.big"
compare ".big", ".small" # returns ".small" (because it appears later)
```
```python
compare("body p", "div") # returns "body p"
compare(".class", "#id") # returns "#id"
compare("div.big", ".small") # returns "div.big"
compare(".big", ".small") # returns ".small" (because it appears later)
```

For simplicity, all selectors in test cases are CSS1-compatible, test cases don't include pseudoclasses, pseudoelements, attribute selectors, etc. Below is an explanation on how to weight two selectors. You can read more about specificity 
[here](http://www.smashingmagazine.com/2007/07/27/css-specificity-things-you-should-know/).

The simplest selector type is ``tagname`` selector. It writes as a simple  alphanumeric identifier: eg ``body``, ``div``, ``h1``, etc. It has the least weight. If selectors have multiple elements - the selector with more elements win. For example, ``body p`` beats ``div``, because it refers to 2 (nested) elements rather than 1.

Another simple selector is ``.class`` selector. It begins with dot and refer to element with specific ``class`` attribute. Class selectors can also be applied to tagname selectors, so ``div.red`` refer to ```` element. They can be grouped, for example, ``.red.striped``. Class selector beats tagname selector.

The most weighted selector type in stylesheet is ``#id`` selector. It begins with hash sign and refer to element with specific ``id`` attribute. It can also be standalone, or applied to an element. Id selector beats both selector types.

And the least weighted selector is ``*``, which has no specificity and can be beat by any other selector.

Selectors can be combined, for example, ``body #menu ul li.active`` refers to ``li`` element with ``class="active"``, placed inside ``ul`` element, placed inside element width ``id="menu"``, placed inside ``body``.

Specificity calculation is simple. 

*Selector with more #id selectors wins

  
*If both are same, the winner is selector with more .class selectors

  
*If both are same, selector with more elements wins

  
*If all of above values are same, the winner is selector that appear last

For example, let's represent the number of ``#id`` , ``.class``, ``tagname`` selectors as array (in order from worst to best):

SelectorSpecifity (#id,.class,tagname)

*0, 0, 0

span0, 0, 1

body p0, 0, 2

.green0, 1, 0

apple.yellow0, 1, 1

div.menu li0, 1, 2

.red .orange0, 2, 0

div.big .first0, 2, 1

#john1, 0, 0

div#john1, 0, 1

body #john span1, 0, 2

menu .item #checkout.active1, 2, 1

#foo div#bar.red .none2, 2, 1

### Tags 
Algorithms; Rules; Strings; Data Types
- - -
## Series
[Series](https://www.codewars.com/kata/series)
Category : algorithms

### Description 

# Series

Write a program that will take a string of digits and give you all the possible consecutive number series of length `n` in that string.

For example, the string "01234" has the following 2-digit series:

* [0, 1]
* [1, 2]
* [2, 3]
* [3, 4]

```ruby
series_slices("01234",2)
# => [[0, 1], [1, 2], [2, 3], [3, 4]]
```

And the following 4-digit series:

* [0, 1, 2, 3]
* [1, 2, 3, 4]


```ruby
series_slices("01234",4)
# => [[0, 1, 2, 3], [1, 2, 3, 4]]
```

And if n is larger than the length of the string, an error should be raised.

### Tags 
Algorithms; Logic; Data Structures
- - -
## Gigasecond
[Gigasecond](https://www.codewars.com/kata/gigasecond)
Category : reference

### Description 

##Gigasecond

Write a program that will calculate the date that someone turned or will celebrate their 1 Gs anniversary.

A gigasecond is one billion (10**9) seconds.

##Example (Ruby)
```ruby
gigasecond(Date.new(2011, 4, 25))
# => 
```
##Assumptions

You can assume that you are only given a valid date object.

### Tags 
Fundamentals; Classes; Basic Language Features; Object-oriented Programming; Programming Paradigms
- - -
## Get Planet Name By ID
[Get Planet Name By ID](https://www.codewars.com/kata/get-planet-name-by-id)
Category : bug_fixes

### Description 

The function is not returning the correct values. Can you figure out why?

```javascript
getPlanetName(3); // should return 'Earth'
```
```ruby
get_planet_name(3) # should return 'Earth'
```

### Tags 
Bugs; Control Flow; Basic Language Features; Fundamentals
- - -
## Plural
[Plural](https://www.codewars.com/kata/plural)
Category : reference

### Description 

We need a simple function that determines if a plural is needed or not. It should take a number, and return true if a plural should be used with that number or false if not. This would be useful when printing out a string such as `5 minutes`, `14 apples`, or `1 sun`. You only need to worry about english grammar rules for this kata.

All values will be positive integers or floats. You cannot have less than zero of a thing, and so plurality wouldn't make sense.

### Tags 
Fundamentals; Conditional Statements; Control Flow; Basic Language Features
- - -
## How many lightsabers do you own?
[How many lightsabers do you own?](https://www.codewars.com/kata/how-many-lightsabers-do-you-own)
Category : reference

### Description 

Inspired by the development team at Vooza, write the function **howManyLightsabersDoYouOwn** that 

* accepts the name of a programmer, and
* returns the number of lightsabers owned by that person.

The only person who owns lightsabers is Zach, by the way. He owns 18, which is an awesome number of lightsabers. Anyone else owns 0.

No starting help here -- you'll need to know how to write a function that accepts a parameter and returns a value based on that parameter.

```javascript
howManyLightsabersDoYouOwn("anyone else") \\ should === 0
howManyLightsabersDoYouOwn("Zach") \\ should === 18
```
```clojure
(howManyLightsabersDoYouOwn "Anny Wan-Else")     ;=> 0
(howManyLightsabersDoYouOwn "Hugh R. Dareader")  ;=> 0
(howManyLightsabersDoYouOwn "Zach")              ;=> 18
```

### Tags 
Fundamentals
- - -
## Triangle type
[Triangle type](https://www.codewars.com/kata/triangle-type)
Category : algorithms

### Description 

In this kata, you should calculate type of triangle with three given sides ``a``, ``b`` and ``c``.

If all angles are less than ``90°``, this triangle is ``acute`` and function should return ``1``.

If one angle is strictly ``90°``, this triangle is ``right`` and function should return ``2``.

If one angle more than ``90°``, this triangle is ``obtuse`` and function should return ``3``.

If three sides cannot form triangle, or one angle is ``180°`` (which turns triangle into segment) - function should return ``0``.

Input parameters are ``sides`` of given triangle. All input values are non-negative floating point or integer numbers (or both).![](http://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Triangle.Acute.svg/181px-Triangle.Acute.svg.png)Acute

![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Triangle.Right.svg/150px-Triangle.Right.svg.png)Right

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Triangle.Obtuse.svg/113px-Triangle.Obtuse.svg.png)Obtuse


##Examples:

```javascript
triangleType(2, 4, 6); // return 0 (Not triangle)
triangleType(8, 5, 7); // return 1 (Acute, angles are approx. 82°, 38° and 60°)
triangleType(3, 4, 5); // return 2 (Right, angles are approx. 37°, 53° and exactly 90°)
triangleType(7, 12, 8); // return 3 (Obtuse, angles are approx. 34°, 106° and 40°)
```
```coffeescript
triangleType 2, 4, 6 # return 0 (Not triangle)
triangleType 8, 5, 7 # return 1 (Acute, angles are approx. 82°, 38° and 60°)
triangleType 3, 4, 5 # return 2 (Right, angles are approx. 37°, 53° and exactly 90°)
triangleType 7, 12, 8 # return 3 (Obtuse, angles are approx. 34°, 106° and 40°)
```
```ruby
triangle_type(2, 4, 6) # return 0 (Not triangle)
triangle_type(8, 5, 7) # return 1 (Acute, angles are approx. 82°, 38° and 60°)
triangle_type(3, 4, 5) # return 2 (Right, angles are approx. 37°, 53° and exactly 90°)
triangle_type(7, 12, 8) # return 3 (Obtuse, angles are approx. 34°, 106° and 40°)
```
```python
triangle_type(2, 4, 6) # return 0 (Not triangle)
triangle_type(8, 5, 7) # return 1 (Acute, angles are approx. 82°, 38° and 60°)
triangle_type(3, 4, 5) # return 2 (Right, angles are approx. 37°, 53° and exactly 90°)
triangle_type(7, 12, 8) # return 3 (Obtuse, angles are approx. 34°, 106° and 40°)
```

If you stuck, this can help you: http://en.wikipedia.org/wiki/Law_of_cosines. But you can solve this kata even without angle calculation.

There is very small chance of random test to fail due to round-off error, in such case resubmit your solution.

### Tags 
Algorithms; Geometry; Algebra; Mathematics; Logic; Numbers
- - -
## Palindrome for your Dome
[Palindrome for your Dome](https://www.codewars.com/kata/palindrome-for-your-dome)
Category : algorithms

### Description 

A palindrome is a word, phrase, number, or other sequence of symbols or elements, whose meaning may be interpreted the same way in either forward or reverse direction. Famous examples include "Amore, Roma", "A man, a plan, a canal: Panama" and "No 'x' in 'Nixon'". - wikipedia

Our goal is to determine whether or not a given string is a valid palindrome or not.

Like the above examples, here are a few test cases which are also populated: 

    "Amore, Roma" => valid
    "A man, a plan, a canal: Panama" => valid
    "No 'x' in 'Nixon'" => valid
    "Abba Zabba, you're my only friend" => invalid

You can see that they are case insensitive and disregards non alphanumeric characters. In addition to a few predefined tests, your function will also be tested against a random string generator 50 times which are guaranteed to produce valid palindromes.

NOTE: reverse/reverse! have been disabled for String/Array and reverse() for JS.

### Tags 
Algorithms; Logic; String Formatting; Formatting; Strings; Data Types
- - -
## Adding ordinal indicator suffixes to numbers
[Adding ordinal indicator suffixes to numbers](https://www.codewars.com/kata/adding-ordinal-indicator-suffixes-to-numbers)
Category : algorithms

### Description 

Finish the function ```numberToOrdinal```, which should take a number and return it as a string with the correct ordinal indicator suffix (in English).  That is:

* ```numberToOrdinal(1) ==> '1st'```
* ```numberToOrdinal(2) ==> '2nd'```
* ```numberToOrdinal(3) ==> '3rd'```
* ```numberToOrdinal(4) ==> '4th'```
* ```... and so on```

For the purposes of this kata, you may assume that the function will always be passed a non-negative integer.  If the function is given 0 as an argument, it should return '0' (as a string).

To help you get started, here is an excerpt from Wikipedia's page on [Ordinal Indicators](http://en.wikipedia.org/wiki/Ordinal_indicator#English): 

* st is used with numbers ending in 1 (e.g. 1st, pronounced first)
* nd is used with numbers ending in 2 (e.g. 92nd, pronounced ninety-second)
* rd is used with numbers ending in 3 (e.g. 33rd, pronounced thirty-third)
* As an exception to the above rules, all the "teen" numbers ending with 11, 12 or 13 use -th (e.g. 11th, pronounced eleventh, 112th, pronounced one hundred [and] twelfth)
* th is used for all other numbers (e.g. 9th, pronounced ninth).

### Tags 
Algorithms; Numbers; Data Types; Strings; Formatting; Logic
- - -
## Checkerboard Generation
[Checkerboard Generation](https://www.codewars.com/kata/checkerboard-generation)
Category : algorithms

### Description 

# Checkerboard

Write a method `checkerboard` which takes an integer `size` and returns a checkerboard of dimensions `size x size`. There are two colored squares on the checkerboard. Red squares are represented by the string `[r]` and black squares are represented by the string `[b]`. You MUST use the newline character `\n` to insert a newline at the end of each row.

* The top left corner should be a red square.
* Each row should have alternating squares in the row.
* The starting square on each row should also alternate.

## Assumptions

* You can assume you are given an integer size.
* You cannot assume positive values. 
  * Thus you should return an empty string for negative sizes and a size of 0. (An empty string does not have a newline ending).
* You should assume the newline character used is `\n`.
* You MUST leave a newline character at the end of the full checkerboard thus allowing the board to be on its own if you were to run in a terminal.

## Examples

Example 1 (Ruby):

```ruby
puts checkerboard(5);
[r][b][r][b][r]
[b][r][b][r][b]
[r][b][r][b][r]
[b][r][b][r][b]
[r][b][r][b][r]
```

Example 2 (Javascript):

```javascript
checkerboard(8);
"[r][b][r][b][r][b][r][b]
[b][r][b][r][b][r][b][r]
[r][b][r][b][r][b][r][b]
[b][r][b][r][b][r][b][r]
[r][b][r][b][r][b][r][b]
[b][r][b][r][b][r][b][r]
[r][b][r][b][r][b][r][b]
[b][r][b][r][b][r][b][r]"
```

## What We're Testing

We're testing loops and conditionals and aiming at beginners. There are many ways of achieving the solution so the correct solution will present a fairly basic version that should be more advanced than typical loop examples and has some extra challenge to the problem with the alternating on columns and rows.

### Tags 
Algorithms; Loops; Control Flow; Basic Language Features; Fundamentals; Conditional Statements
- - -
## Palindromes Below
[Palindromes Below](https://www.codewars.com/kata/palindromes-below)
Category : algorithms

### Description 

The aim of this Kata is to modify the `Fixnum` ( **JS**: `Number` ) class to give it the `palindrome_below` ( **JS**: `palindromeBelow` ) method. This method returns all numbers from and including 1 up to but not including itself that are palindromes for a given **[base](http://en.wikipedia.org/wiki/Radix)**.

For example in base 2 (binary)

    1 = "1"
    2 = "10"
    3 = "11"
    4 = "100"

Therefore 1 and 3 are palindromes in base two and the method should return the following.

    5.palindrome_below(2)
    => [1, 3]

### Tags 
Algorithms; Data Types; Logic; Arithmetic; Mathematics; Numbers
- - -
## Grader
[Grader](https://www.codewars.com/kata/grader)
Category : reference

### Description 

Create a function that takes a number as an argument and returns a grade based on that number.

Anything greater than 1 or less than 0.6 should return "F"

0.9 or greater should return the grade "A"

0.8 or greater should return the grade "B"

0.7 or greater should return the grade "C"

0.6 or greater should return the grade "D"


Examples:
```python
grader(0.9) == "A"

grader(0.3) == "F"

grader(234) == "F"

grader(0.75) == "C"
```

### Tags 
Fundamentals; Rules
- - -
## 2 + 2 * 2 problem
[2 + 2 * 2 problem](https://www.codewars.com/kata/2-plus-2-star-2-problem)
Category : bug_fixes

### Description 

Steve loves MS Windows calculator in Standard mode.

He tries to calculate ``2 + 2 * 2`` in his favorite programming language. But Steve doesn't know about order of operations and he wonders why answers are different. He expects ``8`` but gets ``6``.

Help Steve to fix program, so result will be identical to MS Windows calculator.

### Tags 
Bugs; Fundamentals; Mathematics; Algorithms; Logic; Numbers
- - -
## Even or Odd
[Even or Odd](https://www.codewars.com/kata/even-or-odd)
Category : reference

### Description 

Create a function that takes an integer as an argument and returns "Even" or "Odd".

### Tags 
Fundamentals
- - -
## Sentence Smash
[Sentence Smash](https://www.codewars.com/kata/sentence-smash)
Category : reference

### Description 

# Sentence Smash

Write a method `smash` that takes an array of words and smashes them together into a sentence and returns the sentence. You can ignore any need to sanitize words or add punctuation, but you should add spaces between each word. **Be careful, there shouldn't be a space at the beginning or the end of the sentence!**

## Example (Ruby)

```ruby
words = ['hello', 'world', 'this', 'is', 'great']
puts smash(words)
```

Should print on the console:

```
hello world this is great
```

## Assumptions

* You can assume that you are only given words.
* You cannot assume the size of the array.
* You can assume that you do get an array.

## What We're Testing

We're testing basic loops and string manipulation. This is for beginners who are just learning loops and string manipulation.

## Disclaimer

This is for beginners so we want to test basic loops and string manipulation. Advanced users should easily be able to do this in one line.

### Tags 
Fundamentals; Loops; Control Flow; Basic Language Features; Conditional Statements; Strings; Data Types; Arrays
- - -
## Sum Arrays
[Sum Arrays](https://www.codewars.com/kata/sum-arrays)
Category : reference

### Description 

# Sum Array

Write a method `sum` that takes an array of numbers and returns the sum of the numbers. These may be integers or decimals for Ruby and any instance of Num for Haskell. The numbers can also be negative. If the array does not contain any numbers then you should return 0.

## Examples

```ruby
numbers = [1, 5.2, 4, 0, -1]
puts sum(numbers)
9.2
```
```haskell
print $ sum [1, 5.2, 4, 0, -1]
> 9.2

print $ sum []
> 0
```

## Assumptions

* You can assume that you are only given numbers.
* You cannot assume the size of the array.
* You can assume that you do get an array and if the array is empty, return 0.

## What We're Testing

We're testing basic loops and math operations. This is for beginners who are just learning loops and math operations.

## Disclaimer

This is for beginners so we want to test basic loops and math operations. Advanced users may find this extremely easy and can easily write this in one line.

### Tags 
Fundamentals; Loops; Control Flow; Basic Language Features; Arrays; Data Types
- - -
## Array.diff
[Array.diff](https://www.codewars.com/kata/array-dot-diff)
Category : reference

### Description 

Your goal in this kata is to implement an difference function, which subtracts one list from another.

It should remove all values from list `a`, which are present in list `b`.

```javascript
difference([1,2],[1]) == [2]
```
```coffeescript
difference([1,2],[1]) == [2]
```
```haskell
difference [1,2] [1] == [2]
```

If a value is present in `b`, all of its occurrences must be removed from the other:

```javascript
difference([1,2,2,2,3],[2]) == [1,3]
```
```coffeescript
difference([1,2,2,2,3],[2]) == [1,3]
```
```haskell
difference [1,2,2,2,3] [2] == [1,3]
```

### Tags 
Fundamentals; Arrays; Data Types
- - -
## Ninja vs Samurai: Strike
[Ninja vs Samurai: Strike](https://www.codewars.com/kata/ninja-vs-samurai-strike)
Category : bug_fixes

### Description 

Something is wrong with our Warrior class. The strike method does not work correctly. The following shows an example of this code being used:

```javascript
var ninja = new Warrior('Ninja');
var samurai = new Warrior('Samurai');

samurai.strike(ninja, 3);
// ninja.health should == 70
```

```coffeescript
ninja = new Warrior('Ninja')
samurai = new Warrior('Samurai')

samurai.strike(ninja, 3)
# ninja.health should == 70
```

Can you figure out what is wrong?

### Tags 
Bugs; Prototype-based Programming; Programming Paradigms; Prototypes
- - -
## FizzBuzz Array! (Custom)
[FizzBuzz Array! (Custom)](https://www.codewars.com/kata/fizzbuzz-array-custom)
Category : reference

### Description 

Create a method/function that returns an array of numbers from 1 to 100.

If no arguments are passed the value at the index of the array for  number should be `'Fizz'` if it is divisible by 3, `'Buzz'` if divisible by 5, `'FizzBuzz'` if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

The method should take up to 4 arguments:

The first and second arguments are strings, which should be `'Fizz'` and `'Buzz'` by default.

The third and fourth arguments are integers and and should be `3` and `5` by default.

Example
```ruby
fizz_buzz_custom[15]                         # returns 16
fizz_buzz_custom[44]						 # returns "FizzBuzz" (45 is divisible by 3 and 5)
fizz_buzz_custom('Hey', 'There')[25]         # returns 26
fizz_buzz_custom('Hey', 'There')[11]         # returns "Hey" (12 is divisible by 3)
fizz_buzz_custom("What's ", "up?", 3, 7)[80] # returns "What's " (81 is divisible by 3)
```

```javascript
fizzBuzzCustom()[15]                         // returns 16
fizzBuzzCustom()[44]						 // returns "FizzBuzz" (45 is divisible by 3 and 5)
fizzBuzzCustom('Hey', 'There')[25]         // returns 26
fizzBuzzCustom('Hey', 'There')[11]         // returns "Hey" (12 is divisible by 3)
fizzBuzzCustom("What's ", "up?", 3, 7)[80] // returns "What's " (81 is divisible by 3)
```

### Tags 
Fundamentals; Arrays; Data Types; Logic
- - -
## Metaprogramming Conjurer
[Metaprogramming Conjurer](https://www.codewars.com/kata/metaprogramming-conjurer)
Category : reference

### Description 

Define a class `Conjurer` with a class method `conjure` that takes two mandatory parameters: name and lambda.

When called, it should define a new instance method in the `Conjurer` class with the method name equal to the name parameter, and with the method body equal to the lambda.

```ruby
Conjurer.conjure(:one_through_five, ->{(1..5).to_a})
Conjurer.new.one_through_five 
# => [1, 2, 3, 4, 5] 
```

### Tags 
Fundamentals; Metaprogramming; Programming Paradigms; Advanced Language Features; Lambdas; Functional Programming; Functions; Declarative Programming; Control Flow; Basic Language Features
- - -
## Sort sentence pseudo-alphabetically
[Sort sentence pseudo-alphabetically](https://www.codewars.com/kata/sort-sentence-pseudo-alphabetically)
Category : algorithms

### Description 

Given a standard english sentence passed in as a string, write a method that will return a sentence comprised of the same words, but sorted by their first letter.  However, the method of sorting has a twist to it:

All words that begin with a lower case letter should be at the beginning of the sorted sentence, and sorted in ascending order.  All words that begin with an upper case letter should come after that, and should be sorted in descending order.  If a word appears twice in the sentence, it should be returned twice in the sorted sentence.  Any punctuation must be discarded.

For example, given the input string "Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!", your method should return "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut".  Lower case letters are sorted a->l->l->o->o->t and upper case letters are sorted V->T->O->M->L->C.

### Tags 
Algorithms; Sorting; Logic; Strings; Data Types
- - -
## Given an array of numbers, which are perfect squares?
[Given an array of numbers, which are perfect squares?](https://www.codewars.com/kata/given-an-array-of-numbers-which-are-perfect-squares)
Category : reference

### Description 

Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)

Note: Return only one copy of each perfect square in ascendingorder
```ruby
get_squares(1..16) # => [1, 4, 9, 16]
get_squares(1..100) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
```

### Tags 
Fundamentals; Iterators; Control Flow; Object-oriented Programming; Basic Language Features; Programming Paradigms
- - -
## Greet Me
[Greet Me](https://www.codewars.com/kata/greet-me)
Category : reference

### Description 

Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.

Example
```ruby
greet("maya") # returns "Hello Maya!"
greet("JACK") # returns "Hello Jack!"
```

### Tags 
Fundamentals; Strings; Data Types
- - -
## Name Array Capping
[Name Array Capping](https://www.codewars.com/kata/name-array-capping)
Category : reference

### Description 

Create a method that accepts an array of names, and returns an array of each name with its first letter capitalized.

example
```ruby
cap_me(['jo', 'nelson', 'jurie']) # returns ['Jo', 'Nelson', 'Jurie']
cap_me(['KARLY', 'DANIEL', 'KELSEY']) # returns ['Karly', 'Daniel', 'Kelsey']
```
```javascript
capMe(['jo', 'nelson', 'jurie'])     // returns ['Jo', 'Nelson', 'Jurie']
capMe(['KARLY', 'DANIEL', 'KELSEY']) // returns ['Karly', 'Daniel', 'Kelsey']
```

### Tags 
Fundamentals; Strings; Data Types; Arrays; Utilities
- - -
## Unlimited Sum
[Unlimited Sum](https://www.codewars.com/kata/unlimited-sum)
Category : reference

### Description 

Write a method `sum` that accepts an unlimited number of integer arguments, and adds all of them together.

The method should reject any arguments that are not integers, and sum the remaining integers.

```ruby
sum(1,2,3)
# => 6
```

### Tags 
Fundamentals; Mathematics; Algorithms; Logic; Numbers; Arithmetic; Iterators; Control Flow; Object-oriented Programming; Basic Language Features; Programming Paradigms; Regular Expressions; Declarative Programming; Advanced Language Features; Strings; Data Types; Integers
- - -
## Convert boolean values to strings 'Yes' or 'No'.
[Convert boolean values to strings 'Yes' or 'No'.](https://www.codewars.com/kata/convert-boolean-values-to-strings-yes-or-no)
Category : reference

### Description 

Complete the `bool_to_word` method.

Given: a boolean value

Return: a 'Yes' string for true and a 'No' string for false

### Tags 
Fundamentals; Booleans; Data Types; Best Practices
- - -
## Array#second
[Array#second](https://www.codewars.com/kata/array-number-second)
Category : reference

### Description 

Define a new instance method on the `Array` class called `second`, which returns the second item in an array (similar to the way `.first` and `.last` work in Ruby).

If there is no element with index 1 in the array, return `nil` in Ruby, or `undefined` in Javascript.

### Ruby Example
```ruby
[3, 4, 5].second 
# => 4 

[].second 
# => nil
```

### Javascript Example
```javascript
[1, 2, 3].second();
// => 2

[].second();
// => undefined
```

### Tags 
Fundamentals; Arrays; Data Types; Classes; Basic Language Features; Object-oriented Programming; Programming Paradigms
- - -
## Number of trailing zeros of N!
[Number of trailing zeros of N!](https://www.codewars.com/kata/number-of-trailing-zeros-of-n)
Category : algorithms

### Description 

Write a program that will calculate the number of trailing zeros in a factorial of a given number.

N! = 1 \* 2 \* 3 \* 4 ... N


```
zeros(12) = 2 # 1 * 2 * 3 .. 12 = 479001600 
that has 2 trailing zeros 4790016(00)
```


Be careful 1000! has length of 2568 digital numbers.

### Tags 
Algorithms; Logic; Mathematics; Numbers
- - -
## Remove Odd Hashes
[Remove Odd Hashes](https://www.codewars.com/kata/remove-odd-hashes)
Category : algorithms

### Description 

To complete this kata remove any hash whose two keys sum to an odd number.


example: 
```ruby
remove_odd_hashes(
  [ {a: 5, b: 5}, 
    {a: 3, b: 4}, 
    {a: 2, b: 0}, 
    {a: 2, b: 1}], 
  :a, :b)
  
# returns [{a: 5, b: 5}, {a: 2, b: 0}]
```

### Tags 
Algorithms; Hashes; Data Structures; Arrays; Data Types
- - -
## Welcome to the City
[Welcome to the City](https://www.codewars.com/kata/welcome-to-the-city)
Category : reference

### Description 

Create a method `say_hello` that takes as input a name, city, and state to welcome a person. Note that `name` will be an array consisting of one or more values that should be joined together with one space betweeen each, and the length of the `name` array in test cases will vary.

Example

```
say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')
```

This example will return the string `Hello, John Smith! Welcome to Phoenix, Arizona!`

### Tags 
Fundamentals; Strings; Data Types
- - -
## Pluck
[Pluck](https://www.codewars.com/kata/pluck)
Category : reference

### Description 

Implement `pluck`, which takes an array of objects and a property name, and returns an array containing the named property of each object.

For example:

    pluck([{a:1}, {a:2}], 'a') // -> [1,2]

If an object is missing the property, you should just leave it as `undefined` in the output array.

### Tags 
Fundamentals; Functional Programming; Declarative Programming; Programming Paradigms; Utilities; Arrays; Data Types
- - -
## Disemvowel Trolls
[Disemvowel Trolls](https://www.codewars.com/kata/disemvowel-trolls)
Category : reference

### Description 

Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

### Tags 
Fundamentals; Strings; Data Types; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms
- - -
## esreveR gnirtS
[esreveR gnirtS](https://www.codewars.com/kata/esrever-gnirts)
Category : reference

### Description 

Create a function called `reverse` for the String prototype that will allow the following functionality:

```javascript
"String".reverse();// => returns "gnirtS"
"Super awesome string".reverse();// => returns "gnirts emosewa repuS"
```

The reverse function should NOT modify the original string.

### Tags 
Fundamentals; Strings; Data Types; Prototypes
- - -
## Naughty or Nice?
[Naughty or Nice?](https://www.codewars.com/kata/naughty-or-nice)
Category : reference

### Description 

## Happy Holidays fellow Code Warriors!
It's almost Christmas! That means Santa's making his list, and checking it twice. Unfortunately, Santa's Javascript and CoffeeScript  Elves accidentally mixed the Naughty and Nice list together! Santa needs your help to save Christmas!

## Save Christmas!
Santa needs you to write two functions, `getNiceNames` and `getNaughtyNames`. Both of the functions accept an array of objects. `getNiceNames` returns an array containing only the names of the nice people, and `getNaughtyNames` returns an array containing only the names of the naughty people. Return an empty array `[]` if the result from either of the functions contains no names.

The objects in the passed in array will represent people. Each object contains two properties: `name` and `wasNice`.


`name` - The name of the person


`wasNice` - True if the person was nice this year, false if they were naughty

## Person Object Examples
### JavaScript
```javascript
  { name: 'Warrior reading this kata', wasNice: true }
  { name: 'xDranik', wasNice: false }
```
### Haskell
In Haskell, a `Warrior` is simply a tuple `(String, Bool)`:
```haskell
type Warrior = (String, Bool)

example = ("Warrior reading this kata", True)
```

## Test Examples
```javascript
    getNiceNames( [
        { name: 'Warrior reading this kata', wasNice: true },
        { name: 'xDranik', wasNice: false },
        { name: 'Santa', wasNice: true }
    ] )
    // => returns [ 'Warrior reading this kata', 'Santa' ]

    getNaughtyNames( [
        { name: 'Warrior reading this kata', wasNice: true },
        { name: 'xDranik', wasNice: false },
        { name: 'Santa', wasNice: true }
    ] )
    // => returns [ 'xDranik' ]
```
```haskell
warriors = [
    ("xDranik",                   False),
    ("Santa",                     True), 
    ("Warrior reading this kata", True)
  ]
getNiceNames    warriors == ["Santa", "Warrior reading this kata"]
getNaughtyNames warriors == ["xDranik"]
```

### Tags 
Fundamentals; Hacking Holidays; Arrays; Data Types
- - -
## String ends with?
[String ends with?](https://www.codewars.com/kata/string-ends-with)
Category : reference

### Description 

Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string). 

Examples:

```javascript
solution('abc', 'bc') // returns true
solution('abc', 'd') // returns false
```
```coffeescript
solution('abc', 'bc') # returns true
solution('abc', 'd') # returns false
```
```python
solution('abc', 'bc') # returns true
solution('abc', 'd') # returns false
```

### Tags 
Fundamentals; Strings; Data Types
- - -
## Return the Missing Element
[Return the Missing Element](https://www.codewars.com/kata/return-the-missing-element)
Category : reference

### Description 

Fellow code warrior, we need your help! We seem to have lost one of our array elements, and we need your help to retrieve it! Our array, `superImportantArray`, was supposed to contain all of the integers from 0 to 9 (in no particular order), but one of them seems to be missing.

Write a function called `getMissingElement` that accepts an array of unique integers between 0 and 9 (inclusive), and returns the missing element. 

### Examples:
```javascript
getMissingElement( [0, 5, 1, 3, 2, 9, 7, 6, 4] ) // returns 8
getMissingElement( [9, 2, 4, 5, 7, 0, 8, 6, 1] ) // returns 3
```
```haskell
getMissingElement [0, 5, 1, 3, 2, 9, 7, 6, 4] == 8
getMissingElement [9, 2, 4, 5, 7, 0, 8, 6, 1] == 3
```

### Tags 
Fundamentals; Arrays; Data Types; Search; Algorithms; Logic
- - -
## Snail
[Snail](https://www.codewars.com/kata/snail)
Category : algorithms

### Description 

Snail Sort
Given an array of n x n, return the array elements arranged from outer most elements to the middle element.

```ruby
array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
snail(array) #=> [1,2,3,6,9,8,7,4,5]
```

For better understanding, please follow the numbers of the next array consecutively:
```ruby
array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
snail(array) #=> [1,2,3,4,5,6,7,8,9]
```

This image will illustrate things more clearly:


![](http://www.haan.lu/files/2513/8347/2456/snail.png)


NOTE: The idea is not sort the elements from the lowest value to the highest, the idea is sort them in a snail way

### Tags 
Algorithms; Arrays; Data Types
- - -
## PaginationHelper
[PaginationHelper](https://www.codewars.com/kata/paginationhelper)
Category : algorithms

### Description 

For this exercise you will be strengthening  your page-fu mastery.  You will complete the PaginationHelper class, which is a utility class helpful for querying paging information related to an array. 

The class is designed to take in an array of values and an integer indicating how many items will be allowed per each page. The types of values contained within the collection/array are not relevant. 

The following are some examples of how this class is used:

```javascript 
var helper = new PaginationHelper(['a','b','c','d','e','f'], 4);
helper.pageCount(); //should == 2
helper.itemCount(); //should == 6
helper.pageItemCount(0); //should == 4
helper.pageItemCount(1); // last page - should == 2
helper.pageItemCount(2); // should == -1 since the page is invalid

// pageIndex takes an item index and returns the page that it belongs on
helper.pageIndex(5); //should == 1 (zero based index)
helper.pageIndex(2); //should == 0
helper.pageIndex(20); //should == -1
helper.pageIndex(-10); //should == -1
```

```coffeescript
helper = new PaginationHelper(['a','b','c','d','e','f'], 4)
helper.pageCount() # should == 2
helper.itemCount() # should == 6
helper.pageItemCount(0)  # should == 4
helper.pageItemCount(1) # last page - should == 2
helper.pageItemCount(2) # should == -1 since the page is invalid

# pageIndex takes an item index and returns the page that it belongs on
helper.pageIndex(5) # should == 1 (zero based index)
helper.pageIndex(2) # should == 0
helper.pageIndex(20) # should == -1
helper.pageIndex(-10) # should == -1
```

```ruby
helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
helper.page_count # should == 2
helper.item_count # should == 6
helper.page_item_count(0)  # should == 4
helper.page_item_count(1) # last page - should == 2
helper.page_item_count(2) # should == -1 since the page is invalid

# page_ndex takes an item index and returns the page that it belongs on
helper.page_index(5) # should == 1 (zero based index)
helper.page_index(2) # should == 0
helper.page_index(20) # should == -1
helper.page_index(-10) # should == -1 because negative indexes are invalid
```

### Tags 
Algorithms; Object-oriented Programming; Programming Paradigms; Classes; Basic Language Features; Fundamentals; Utilities; Arrays; Data Types; Collections; Lists; Data Structures
- - -
## Reverse polish notation calculator
[Reverse polish notation calculator](https://www.codewars.com/kata/reverse-polish-notation-calculator)
Category : algorithms

### Description 

Your job is to create a calculator which evaluates expressions in [Reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation).

For example expression `5 1 2 + 4 * + 3 -` (which is equivalent to `5 + ((1 + 2) * 4) - 3` in normal notation) should evaluate to `14`.

Note that for simplicity you may assume that there are always spaces between numbers and operations, e.g. `1   3 +` expression is valid, but `1 3+` isn't.

Empty expression should evaluate to `0`.

Valid operations are `+`, `-`, `*`, `/`.

You may assume that there won't be exceptional situations (like stack underflow or division by zero).

### Tags 
Algorithms; Logic; Mathematics; Numbers; Data Types; Interpreters; Parsing; Strings
- - -
## Sum of (Two) Squares
[Sum of (Two) Squares](https://www.codewars.com/kata/sum-of-two-squares)
Category : algorithms

### Description 

# Sum of (Two) Squares

We are asking for a function to take a positive integer value, and return a list of all positive integer pairs whose values - when squared- sum to the given integer.

For example, given the parameter 25, the function could return two pairs of 5,0 and  3,4 because 5^2 + 0^2 = 25 and 3^2 + 4^2 = 25. 

We might express that in pseudo-code like this:

```javascript
    allSquaredPairs(25) == [[5,0],[3,4]];
```
```coffeescript
    allSquaredPairs(25) == [[5,0],[3,4]];
```
```ruby
    all_squared_pairs(25) == [[5,0],[3,4]];
```

Here are the requirements:

* The return value should be a two dimensional array of positive integer pairs in any order.
* A parameter value that is not the sum of any two squares should simply return an empty array
* We will consider 5,0 and 0,5 to be equal pairs, disregarding the order. Do not list the same pair twice.
* The upper bound of the parameter value will be 2,147,483,647

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Phone my kids
[Phone my kids](https://www.codewars.com/kata/phone-my-kids)
Category : reference

### Description 

Sometimes you need to know all classes that inherited from you, and to be able to do simple things like listing or calling all of them.

Write a class called "Mother" that tracks all inheritances that are done to her (and her kids), together with a class method "phone_kids" that calls in turn the class method "phone" of all kids.

So if you have two kids

```
class Foo

### Tags 
Fundamentals; Metaprogramming; Programming Paradigms; Advanced Language Features; Object-oriented Programming; Inheritance; Polymorphism
- - -
## Holiday Shopping Priority Queue
[Holiday Shopping Priority Queue](https://www.codewars.com/kata/holiday-shopping-priority-queue)
Category : algorithms

### Description 

### Happy Holidays fellow Code Warriors! 


The holidays are just around the corner. You know what that means...Holiday Shopping! I was planning on buying  all you Code Warriors a gift, but I don't know which order to buy them! I have a small shopping list that I'm constantly adding to, and all of the items have a certain priority. What if I use a priority queue?
### Holiday Shopping Priority Queue
Priority queues are similar to queues, but they add a priority to each data entry, so items with higher priorities (lower integer values) are processed first.

While I'm running around buying the gifts, I need you to write a few methods for the `HolidayPriorityQueue` class to help me out. The class needs two methods: `addGift` and `buyGift`. For this Kata, all priorities will be unique, so no need to worry about equal priorities.

### Method descriptions:

`addGift` (or enqueue) adds a gift to the priority queue. This method should accept one object (or hash in ruby), which has two properties: `gift` - the name of the gift, and `priority` - the priority of the gift, and should return the new length of the queue. All gifts will be in this form.

`buyGift` (or dequeue) removes the gift with the highest priority from the priority queue, and returns the gifts name (value of the gift property). If the queue is empty, return the empty string `''`

### Examples:
#### Javascript/CoffeeScript
    var giftList = new HolidayPriorityQueue();
    giftList.addGift( { gift: 'Water gun', priority: 1} );// => returns 1
    giftList.addGift( { gift: 'Toy truck', priority: 4 } );// => returns 2
    giftList.addGift( { gift: 'Roller Skates', priority: 3 } );// => returns 3

    giftList.buyGift();// => returns 'Water gun'
    giftList.buyGift();// => returns 'Roller Skates'
    giftList.buyGift();// => returns 'Toy truck'


#### Ruby
    gift_list = HolidayPriorityQueue.new
    gift_list.addGift( { 'gift' => 'Water gun', 'priority' => 1 } )// => returns 1
    gift_list.addGift( { 'gift' => 'Toy truck', 'priority' => 4 } )// => returns 2
    gift_list.addGift( { 'gift' => 'Roller Skates', 'priority' => 3} )// => returns 3

    gift_list.buyGift()// => returns 'Water gun'
    gift_list.buyGift()// => returns 'Roller Skates'
    gift_list.buyGift()// => returns 'Toy truck'

Resources for priority queues:


http://en.wikipedia.org/wiki/Priority_queue

### Tags 
Algorithms; Hacking Holidays; Queues; Arrays; Data Types
- - -
## N-th Fibonacci
[N-th Fibonacci](https://www.codewars.com/kata/n-th-fibonacci)
Category : algorithms

### Description 

I love Fibonacci numbers in general, but I must admit I love some more than others. 

I would like for you to write me a function that when given a number (n)  returns the n-th number in the Fibonacci Sequence.

For example:

```javascript
   nthFibo(4) == 2
```
```coffeescript
   nthFibo(4) == 2
```
```ruby
   nth_fibonacci(4) == 2
```
```haskell
   fib 4 == 2
```
```python
  nth_fib(4) == 2
```

Because 2 is the 4th number in the Fibonacci Sequence.

For reference, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two.

### Tags 
Algorithms; Numbers; Data Types
- - -
## Flatten
[Flatten](https://www.codewars.com/kata/flatten-1)
Category : reference

### Description 

Write a function that flattens an `Array` of `Array` objects into a flat `Array`.  Your function must only do one level of flattening.

```javascript
flatten([1,2,3]) // => [1,2,3]
flatten([[1,2,3],["a","b","c"],[1,2,3]])  // => [1,2,3,"a","b","c",1,2,3]
flatten([[[1,2,3]]]) // => [[1,2,3]]
```

```coffeescript
flatten [1,2,3] # => [1,2,3]
flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]
flatten [[[1,2,3]]] # => [[1,2,3]]
```

```ruby
flatten [1,2,3] # => [1,2,3]
flatten [[1,2,3],["a","b","c"],[1,2,3]]  # => [1,2,3,"a","b","c",1,2,3]
flatten [[[1,2,3]]] # => [[1,2,3]]
```

### Tags 
Fundamentals; Functional Programming; Declarative Programming; Programming Paradigms; Arrays; Data Types; Utilities
- - -
## Format words into a sentence
[Format words into a sentence](https://www.codewars.com/kata/format-words-into-a-sentence)
Category : algorithms

### Description 

Complete the method so that it formats the words into a single comma separated value. The last word should be separated by the word 'and' instead of a comma. The method takes in an array of strings and returns a single formatted string. Empty string values should be ignored. Empty arrays or null/nil values being passed into the method should result in an empty string being returned. 

```javascript
formatWords(['ninja', 'samurai', 'ronin']) // should return "ninja, samurai and ronin"
formatWords(['ninja', '', 'ronin']) // should return "ninja and ronin"
formatWords([]) // should return ""
```
```coffeescript
formatWords(['ninja', 'samurai', 'ronin']) # should return "ninja, samurai and ronin"
formatWords(['ninja', '', 'ronin']) # should return "ninja and ronin"
formatWords([]) # should return ""
```

```ruby
format_words(['ninja', 'samurai', 'ronin']) # should return "ninja, samurai and ronin"
format_words(['ninja', '', 'ronin']) # should return "ninja and ronin"
format_words([]) # should return ""
```

### Tags 
Algorithms; Utilities; Formatting; Logic; Strings; Data Types
- - -
## Simple Sentences
[Simple Sentences](https://www.codewars.com/kata/simple-sentences)
Category : reference

### Description 

Implement a function, so it will produce a sentence out of the given parts.

Array of parts could contain:


- words;


- commas in the middle;


- multiple periods at the end.



Sentence making rules:


- there must always be a space between words;


- there must not be a space between a comma and word on the left;


- there must always be one and only one period at the end of a sentence.



**Example:**
```javascript
makeSentence(['hello', ',', 'my', 'dear']) // returns 'hello, my dear.'
```
```coffeescript
makeSentence ['hello', ',', 'my', 'dear'] # returns 'hello, my dear.'
```
```ruby
make_sentence ['hello', ',', 'my', 'dear'] # returns 'hello, my dear.'
```

### Tags 
Fundamentals; Strings; Data Types; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms
- - -
## Bag#every?
[Bag#every?](https://www.codewars.com/kata/bag-number-every)
Category : reference

### Description 

We have an awesome, custom collection class, *Bag*, which already has implemented an *#each* for traversing its items and *#count* for counting the items. New requirements come in for the project to check arbitrary conditions regarding data inside of a *Bag*.

We were just about to break out the trusty old *#each* hammer, when we realize there might be an better/easier/cleaner way. Spotting an abstraction waiting to happen, we decide implement a new method, *#every?*, to make sure that every item in a *Bag* matches the condition.

The *#every?* method needs to receive a block to run some test against every item. If *every* test passes, it returns true. If any of the tests fail, it returns false. Empty bags should pass all tests.

It also has a shorthand variation for our lazy friends. If you do not pass a block to *#every*, it tests the truthiness of the items themselves.

Examples:

```ruby
bag = Bag.new(:surefire, :tests)
bag.every? { true } # => true
bag.every? { false } # => false

bag = Bag.new(1,2,3,4)
bag.every? { |num| num > 0 } # => true
bag.every? { |num| num.odd? } # => false

bag = Bag.new(:code, :wars)
bag.every? # => true

bag = Bag.new(:cat, :+, :roomba, nil, :profit!)
bag.every? # => false
```

### Tags 
Fundamentals; Lambdas; Functional Programming; Functions; Declarative Programming; Programming Paradigms; Control Flow; Basic Language Features
- - -
## Arrh, grabscrab!
[Arrh, grabscrab!](https://www.codewars.com/kata/arrh-grabscrab)
Category : algorithms

### Description 

Pirates have notorious difficulty with enunciating. They tend to blur all the letters together and scream at people.

At long last, we need a way to unscramble what these pirates are saying.

Write a function that will accept a jumble of letters as well as a dictionary, and output a list of words that the pirate might have meant.

For example:

    grabscrab "ortsp", ["sport", "parrot", "ports", "matey"]

Should return `["sport", "ports"]`.

Good luck!


The kata tests are the same as the sample fixtures.

Return an empty array if there are no matches.

For best results, return matches in the same order as in the dictionary.

### Tags 
Algorithms; Strings; Data Types; Dictionary; Data Structures; Search; Logic
- - -
## Sort Arrays (Ignoring Case)
[Sort Arrays (Ignoring Case)](https://www.codewars.com/kata/sort-arrays-ignoring-case)
Category : reference

### Description 

Simple sort, but this time sort regardless of upper / lower case. 

So the input of
```
[ "Hello", "there", "I'm", "fine"]
```
is translated to
```
["fine", "Hello", "I'm", "there" ]
```

### Tags 
Fundamentals; Arrays; Data Types; Sorting; Algorithms; Logic
- - -
## Return substring instance count
[Return substring instance count](https://www.codewars.com/kata/return-substring-instance-count)
Category : reference

### Description 

Complete the solution so that it returns the number of times the search_text is found within the full_text. 

Usage example:

```ruby
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1
```

### Tags 
Fundamentals; Strings; Data Types
- - -
## Reversed Words
[Reversed Words](https://www.codewars.com/kata/reversed-words)
Category : algorithms

### Description 

Complete the solution so that it reverses all of the words within the string passed in. 

Example:

```ruby
solution("The greatest victory is that which requires no battle") 
# should return "battle no requires which that is victory greatest The"
```
```coffeescript
reverseWords "The greatest victory is that which requires no battle"
# should return "battle no requires which that is victory greatest The"
```
```haskell
reverseWords "The greatest victory is that which requires no battle"
-- should return "battle no requires which that is victory greatest The"
```
```javascript
reverseWords("The greatest victory is that which requires no battle")
// should return "battle no requires which that is victory greatest The"
```

### Tags 
Algorithms; Strings; Data Types
- - -
## Does array x contain all values within array  y?
[Does array x contain all values within array  y?](https://www.codewars.com/kata/does-array-x-contain-all-values-within-array-y)
Category : reference

### Description 

We want to extend the array class so that it provides a contains_all? method. This method will always assume that an array is passed in and will return true if all values within the passed in array are present within the current array. 

For example:

```ruby
items = [1, 2, 3, 4, 5, 6, 7, 8, 9]

items.contains_all?([1, 2, 3]) # should == true
items.contains_all?([1, 5, 13]) # should == false because 13 is not within the items array
```

### Tags 
Fundamentals; Arrays; Data Types
- - -
## Pyramid Array
[Pyramid Array](https://www.codewars.com/kata/pyramid-array)
Category : algorithms

### Description 

Write a function that when given a number >= 0, returns an Array of ascending length subarrays.


pyramid(0)
=> [ ]

pyramid(1)
=> [  [1]  ]

pyramid(2)
=> [  [1],  [1, 1]  ]

pyramid(3)
=> [  [1],  [1, 1],  [1, 1, 1]  ]

### Tags 
Algorithms
- - -
## Upper Case Processor
[Upper Case Processor](https://www.codewars.com/kata/upper-case-processor)
Category : bug_fixes

### Description 

The following code is supposed to use the Processor class (defined for you, code shown below) to do an upper case conversion on any string value contained within the hashes passed to it. Can you figure out why the code is not executing properly?

```ruby
class Processor
  attr_reader :items_processed
  
  def initialize(&block)
    @block = block
    @items_processed = 0
  end
  
  # attempts to process the item. Only counts the item as processed 
  # if the block returns true
  def process(*args)
    args.each do |item|
      @items_processed += 1 if @block.call(item)
    end
  end
end
```

The following is an example of how this processor instance would be used:
```ruby
mars = {name: 'mars', type: 'planet'}
earth = {ignore_processing: true, name: 'Earth', type: 'Planet'}

# only mars will have its values made all uppercase
processor.process(mars, earth) 
```

### Tags 
Bugs
- - -
## Statistics Algorithm - Calculate Sample Space
[Statistics Algorithm - Calculate Sample Space](https://www.codewars.com/kata/statistics-algorithm-calculate-sample-space)
Category : algorithms

### Description 

Complete the giant_run_on_sentence_method_name - examples, and the appropriate results are:

all_possible_outcomes_of_multiple_trials(coin, 2) should == 4
all_possible_outcomes_of_multiple_trials(coin, 3) should == 8
all_possible_outcomes_of_multiple_trials(dice, 1) should == 6
all_possible_outcomes_of_multiple_trials(dice, 2) should == 36

given the following variables:

coin = ['heads', 'tails']


dice = (1..6).to_a

Definition of Sample Space: set of all possible elementary outcomes of a trial.

Find the number of possible outcomes by using the fundamental counting principle.


The Fundamental counting Principle is:


	If a process requires 2 actions and the 1st action can be done in x ways and the
	2nd action can be done in y ways, then the process can be done in x*y ways.

Consider a coin, and a dice:


coin = ['heads', 'tails']


dice = [1, 2, 3, 4, 5, 6]

If the experiment consists of multiple trials, all possible combinations of outcomes of the trials must be specified as part of the sample space. 

Examples and solutions:


if the trial consists of flipping a coin twice, you should have 4 possible results:


	heads, heads


	heads, tails


	tails, heads


	tails, tails



if each trial were to consist of three coin-flips, you should have 8 results:


	heads, heads, tails


	heads, heads, heads


	tails, heads, tails


	tails, tails, tails


	tails, tails, heads


	heads, tails, heads


	tails, heads, heads


	heads, tails, tails



if each trial were to consist of one dice-roll, you should have 6 possible results:


	1


	2


	3


	4


	5


	6



if each trial were to consist of two dice-rolls, you should have 36 (gasp!) results:


	1, 1


	1, 2


	2, 1


	...I'm not typing out the rest - you get it. :P

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Arabian String
[Arabian String](https://www.codewars.com/kata/arabian-string)
Category : algorithms

### Description 

You must create a method that can convert a string from any format into CamelCase. This must support symbols too.

*Don't presume the separators too much or you could be surprised.*

### Tests
```ruby
camelize("example name")   # => ExampleName
camelize("your-NaMe-here") # => YourNameHere
camelize("testing ABC")    # => TestingAbc
```

### Tags 
Algorithms; Strings; Data Types; Formatting; Logic
- - -
## Calculate Hypotenuse of Right-angled Triangle
[Calculate Hypotenuse of Right-angled Triangle](https://www.codewars.com/kata/calculate-hypotenuse-of-right-angled-triangle)
Category : algorithms

### Description 

To solve this Kata, complete the function, calculateHypotenuse(a,b), which will return the length of the hyptenuse for a right angled triangle with the other two sides having a length equal to the inputs.  More details:

- The returned value should be a number rounded to three decimal places
- An error should be thrown if an invalid input is provided (inputs should both be numbers that are above zero)

```javascript
calculateHypotenuse(1,1); // returns 1.414
calculateHypotenuse(3,4); // returns 5
calculateHypotenuse(-2,1); // throws error
calculateHypotenuse("one", "two"); // throws error
```

```coffeescript
calculateHypotenuse(1,1); # returns 1.414
calculateHypotenuse(3,4); # returns 5.000
calculateHypotenuse(-2,1); # throws error
calculateHypotenuse("one", "two"); # throws error
```

```ruby
calculateHypotenuse(1,1) # returns 1.414
calculateHypotenuse(3,4) # returns 5
calculateHypotenuse(-2,1) # raises exception
calculateHypotenuse("one", "two") # raises exception
```

For more information on the hypotenuse, visit: http://en.wikipedia.org/wiki/Hypotenuse

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Hyper Sphere
[Hyper Sphere](https://www.codewars.com/kata/hyper-sphere)
Category : reference

### Description 

To pass this kata you are required to complete the function in_sphere?.  You will be given an array of cordinates and a radius. The function should return true if the coordinates describe a point within the given radius of the origin ([0,0...0]). A point with no co-ordinates should return true. (In zero dimensions all points are the same point)

In two dimensions the condition that any [x,y] co-ordinate lies in a circle is:-

***
x
2 + y
2 2
***

This generalises to higer dimensions as follows.

***
x
12 + x
22 + ... x
n2 2
***

### Tags 
Fundamentals; Mathematics; Algorithms; Logic; Numbers; Data Types; Arrays; Utilities
- - -
## IPv4 to int32
[IPv4 to int32](https://www.codewars.com/kata/ipv4-to-int32)
Category : reference

### Description 

Take the following IPv4 address:  128.32.10.1
This address has 4 octets where each octet is a single byte (or 8 bits).

* 1st octet 128 has the binary representation: 10000000
* 2nd octet 32 has the binary representation: 00100000
* 3rd octet 10 has the binary representation: 00001010
* 4th octet 1 has the binary representation: 00000001

So 128.32.10.1 == 10000000.00100000.00001010.00000001

Because the above IP address has 32 bits, we can represent it as the 32
bit number: 2149583361.

Write a function ip_to_int32(ip) ( **JS**: `ipToInt32(ip)` ) that takes an IPv4 address and returns
a 32 bit number.

```ruby
  ip_to_int32("128.32.10.1") => 2149583361
```
```javascript
  ipToInt32("128.32.10.1") => 2149583361
```

### Tags 
Fundamentals; Networks; Algorithms; Logic; Bits; Binary; Numbers; Data Types; Integers; Utilities
- - -
## Extract the IDs from the data set
[Extract the IDs from the data set](https://www.codewars.com/kata/extract-the-ids-from-the-data-set)
Category : algorithms

### Description 

Complete the method so that it returns an array of all ID's  passed in. The data structure will be similar to the following:

```javascript
var data = {
  id: 1,
  items: [
    {id: 2},
    {id: 3, items: [
      {id: 4},
      {id: 5}
    ]}
  ]
}

extractIds(data) // should return [1,2,3,4,5]
```
```coffeescript
data =
  id: 1
  items: [
    {id: 2}
    {id: 3, items: [
      {id: 4}
      {id: 5}
    ]}
  ]


extractIds(data) # should return [1,2,3,4,5]
```
```ruby
data = {
  id: 1,
  items: [
    {id: 2},
    {id: 3, items: [
      {id: 4},
      {id: 5}
    ]}
  ]
}

extract_ids(data) # should return [1,2,3,4,5]
extract_ids({}) # should return []
```

The method should be able to handle the case of empty data being passed in. 

*Note:* The only arrays that need to be traversed are those assigned to the "items" property.

### Tags 
Algorithms; Arrays; Data Types; Mapping; Logic
- - -
## Who has the most money?
[Who has the most money?](https://www.codewars.com/kata/who-has-the-most-money)
Category : algorithms

### Description 

You're going on a trip with some students and it's up to you to keep track of how much money each Student has:

```ruby
class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties
  
  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end
end
```
As you can tell, each Student has some fives, tens, and twenties. Your job is to return the name of the student with the most money. If every student has the same amount, then the return value should be "all"

Notes:
1) Each student will have an unique name
2) There will be a clear winner (either one person has the most or everyone has the same amount)
3) If there is only one student, then that student has the most money

### Tags 
Algorithms; Object-oriented Programming; Programming Paradigms
- - -
## Statistics Algorithm - Calculate Mean
[Statistics Algorithm - Calculate Mean](https://www.codewars.com/kata/statistics-algorithm-calculate-mean)
Category : algorithms

### Description 

Create a mathematical algorithm to calculate the mean of a series of numbers.  The mean of a series of numbers is the sum of all items in a set, divided by the number of items in that set.

Examples: 


calc_mean([]) should return 0 


calc_mean([1, 2, 3]) should return 2.0 


calc_mean([6, 8, 10]) should return 8.0 


calc_mean([15, 30, 60, 120, 240]) should return 93.0

Inputs are always populated (non-empty) arrays.  Input arrays never include non-integer or non-float elements.  Non-array inputs return 0.

### Tags 
Algorithms
- - -
## Fizz Buzz
[Fizz Buzz](https://www.codewars.com/kata/fizz-buzz)
Category : algorithms

### Description 

Return an array containing the numbers from 1 to N, where N is the parametered value.
N will never be less than 1.

Replace certain values however if any of the following conditions are met:

 * If the value is a multiple of 3: use the value 'Fizz' instead
 * If the value is a multiple of 5: use the value 'Buzz' instead
 * If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

### Tags 
Algorithms; Logic; Fundamentals; Numbers; Data Types; Arrays
- - -
## Building Strings From a Hash
[Building Strings From a Hash](https://www.codewars.com/kata/building-strings-from-a-hash)
Category : reference

### Description 

Complete the solution so that it takes the object (JavaScript/CoffeeScript) or hash (ruby) passed in and generates a human readable string from its key/value pairs. 

The format should be "KEY = VALUE". Each key/value pair should be separated by a comma except for the last pair.

**Example:**
```javascript
solution({a: 1, b: '2'}) // should return "a = 1,b = 2"
```
```coffeescript
solution({a: 1, b: '2'}) # should return "a = 1,b = 2"
```

```ruby
solution({a: 1, b: '2'}) # should return "a = 1,b = 2"
```

### Tags 
Fundamentals; Strings; Data Types
- - -
## Sort arrays - 1
[Sort arrays - 1](https://www.codewars.com/kata/sort-arrays-1)
Category : reference

### Description 

Just a simple sorting usage. Create a function that returns the elements of the input-array in a sorted manner.

### Tags 
Fundamentals; Sorting; Algorithms; Logic; Arrays; Data Types
- - -
## Sorted hashes
[Sorted hashes](https://www.codewars.com/kata/sorted-hashes)
Category : reference

### Description 

Complete the solution so that it sorts an array of hashes passed in by the hash key specified. 

Example: 

```ruby
solution([{'a' => 2}, {'a' => 1}], 'a')
# => [{'a' => 1}, {'a' => 2}]]

solution([{a: 1}, {a: 5}, {a: 3}], :a)
# => [{a:1}, {a: 3}, {a: 5}]

```

### Tags 
Fundamentals; Hashes; Data Structures; Sorting; Algorithms; Logic
- - -
## No oddities here
[No oddities here](https://www.codewars.com/kata/no-oddities-here)
Category : reference

### Description 

Write a small function that returns the values of an array that are not odd. 

All values in the array will be integers. Return the good values in the order they are given.

```javascript
function noOdds( values )
```
```coffeescript
noOdds = ( values ) ->
```
```ruby
def no_odds( values )
```

### Tags 
Fundamentals; Arrays; Data Types
- - -
## Search for letters
[Search for letters](https://www.codewars.com/kata/search-for-letters)
Category : reference

### Description 

String search

Create a method to accept one arbitrary string as an argument, and return a string of length 26.

The objective is to detect if letters of the alphabet (upper or lower case) are present anywhere in the string, and to set each of the 26 characters corresponding to each letter to either '1' if present, '0' if not.

So if an 'a' or an 'A' appears anywhere in the argument string (any number of times), set the first character of the returned string to '1' otherwise to '0', if 'b' or 'B' the the second to '1', and so on for the rest of the alphabet.

So the returned string consists only of '1's and '0's.

For instance

	change('a   **&  bZ') =>  '11000000000000000000000001'

### Tags 
Fundamentals; Strings; Data Types; Search; Algorithms; Logic
- - -
## Get key/value pairs as arrays
[Get key/value pairs as arrays](https://www.codewars.com/kata/get-key-slash-value-pairs-as-arrays)
Category : reference

### Description 

Complete the keysAndValues function so that it takes in an object and returns the keys and values as separate arrays.  

Example:
```javascript
keysAndValues({a: 1, b: 2, c: 3}) // should return [['a', 'b', 'c'], [1, 2, 3]]
```
```coffeescript
keysAndValues({a: 1, b: 2, c: 3}) # should return [['a', 'b', 'c'], [1, 2, 3]]
```
```ruby
keysAndValues({a: 1, b: 2, c: 3}) # should return [[:a, :b, :c], [1, 2, 3]]
```

**Style Points (JS/CoffeeScript only)**: This kata only tests for data that uses object literal notation (simple objects). For extra style, can you get your method to check for  objects that extend their prototype?

### Tags 
Fundamentals; Arrays; Data Types; Hashes; Data Structures
- - -
## Populate hash with array keys and default value
[Populate hash with array keys and default value](https://www.codewars.com/kata/populate-hash-with-array-keys-and-default-value)
Category : reference

### Description 

Complete the solution so that it takes an array of keys and a default value and returns a hash with all keys set to the default value. 

Example:

```ruby
solution([:draft, :completed], 0) # should return {draft: 0, completed: 0}
```

### Tags 
Fundamentals; Hashes; Data Structures; Arrays; Data Types
- - -
## Sort Numbers
[Sort Numbers](https://www.codewars.com/kata/sort-numbers)
Category : reference

### Description 

Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.

For example:

```javascript
solution([1, 2, 10, 50, 5]); // should return [1,2,5,10,50]
solution(null); // should return []
```

```coffeescript
solution([1, 2, 10, 50, 5]) # should return [1,2,5,10,50]
solution(null) # should return []
```

```ruby
solution([1, 2, 10, 50, 5]) # should return [1,2,5,10,50]
solution(nil) # should return []
```

### Tags 
Fundamentals
- - -
## Reversed Strings
[Reversed Strings](https://www.codewars.com/kata/reversed-strings)
Category : reference

### Description 

Complete the solution so that it reverses the string value passed into it. 

```javascript
solution('world'); // returns 'dlrow'
```

```coffeescript
solution('world') # returns 'dlrow'
```

```ruby
solution('world') # returns 'dlrow'
```

### Tags 
Fundamentals; Strings; Data Types
- - -
## Refactored Greeting
[Refactored Greeting](https://www.codewars.com/kata/refactored-greeting)
Category : refactoring

### Description 

The following code could use a bit of object oriented artistry. While its a simple method and works just fine as it is, in a larger system its best to organize methods into classes/objects. Refactor the following code so that it belongs to a Person class/object. Each Person instance will have a greet method. The Person instance should be instantiated with a name so that it no longer has to be passed into each greet method call. 

Here is how the final refactored code would be used:

```javascript
var joe = new Person('Joe');
joe.greet('Kate'); // should return 'Hello Kate, my name is Joe'
joe.name # should == 'Joe'
```

```coffeescript
joe = new Person('Joe')
joe.greet('Kate') # should return 'Hello Kate, my name is Joe'
joe.name # should == 'Joe'
```

```ruby
joe = Person.new('Joe')
joe.greet('Kate') # should return 'Hello Kate, my name is Joe'
joe.name # should == 'Joe'
```

### Tags 
Refactoring; Object-oriented Programming; Programming Paradigms
- - -
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
## Float Precision
[Float Precision](https://www.codewars.com/kata/float-precision)
Category : reference

### Description 

Update the solution method to round the argument value to the closest precision of two. The argument will always
be a float.

```ruby
solution(23.23456) # should == 23.23
solution(1.546) # should == 1.55
```

### Tags 
Fundamentals; Floats/Doubles; Data Types; Numbers
- - -
## Yield to the Block
[Yield to the Block](https://www.codewars.com/kata/yield-to-the-block)
Category : reference

### Description 

Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

### Tags 
Fundamentals; Blocks; Object-oriented Programming; Functions; Programming Paradigms; Control Flow; Basic Language Features; Functional Programming; Declarative Programming; Higher-order Functions
- - -
## Function 3 - multiplying two numbers
[Function 3 - multiplying two numbers](https://www.codewars.com/kata/function-3-multiplying-two-numbers)
Category : reference

### Description 

This function has to be called **multiply** and needs to take two numbers as arguments, and has to return the multiplication of the two arguments.

### Tags 
Fundamentals
- - -
## Basic Training: Add item to an Array
[Basic Training: Add item to an Array](https://www.codewars.com/kata/basic-training-add-item-to-an-array)
Category : reference

### Description 

Add the value "codewars" to the websites array.  
After your code executes the websites array **should == ["codewars"]**

The websites array has **already been defined for you** using the following code:
```javascript
var websites = [];
```
```coffeescript
websites = []
```
```ruby
websites = []
```

### Tags 
Fundamentals
- - -
## Short Long Short
[Short Long Short](https://www.codewars.com/kata/short-long-short)
Category : algorithms

### Description 

Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside
and the longer string on the inside. The strings will not be the same length, but they may be empty (length0).

For example:

```javascript
solution("1", "22") // returns "1221"
solution("22", "1") // returns "1221"
```

```coffeescript
solution("1", "22") # returns "1221"
solution("22", "1") # returns "1221"
```

```ruby
solution("1", "22") # returns "1221"
solution("22", "1") # returns "1221"
```

### Tags 
Algorithms
- - -
## Roman Numerals Decoder
[Roman Numerals Decoder](https://www.codewars.com/kata/roman-numerals-decoder)
Category : algorithms

### Description 

Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.

Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.

Example:
```javascript
solution('XXI'); // should return 21
```

```coffeescript
solution('XXI') # should return 21
```

```ruby
solution('XXI') # should return 21
```

```python
solution('XXI') # should return 21
```

*Courtesy of rosettacode.org*

### Tags 
Algorithms; Parsing; Logic; Strings
- - -
## Life of Possibilities
[Life of Possibilities](https://www.codewars.com/kata/life-of-possibilities)
Category : algorithms

### Description 

Given a map of words and their translations, generate a list of all possible unique combinations of translations, sorted lexically.

For example, given the map of words:
```ruby
words = {
  life:   %w{ vida vie Leben },
  death:  %w{ muerte mort Tode }
}
```
The method should return the result:
```ruby
 {
  life: [
    ['Leben'],
    ['Leben', 'vida'],
    ['Leben', 'vida', 'vie'],
    ['Leben', 'vie'],
    ['vida'],
    ['vida', 'vie'],
    ['vie']
  ],
  death: [
    ['Tode'],
    ['Tode', 'mort'],
    ['Tode', 'mort', 'muerte'],
    ['Tode', 'muerte'],
    ['mort'],
    ['mort', 'muerte'],
    ['muerte']
  ]
}
```

### Tags 
Algorithms; Mapping; Logic
- - -
## Not very secure
[Not very secure](https://www.codewars.com/kata/not-very-secure)
Category : bug_fixes

### Description 

In this example you have to validate if a user input string is alphanumeric. The given string is not nil, so you don't have to check that.

The string has the following conditions to be alphanumeric:

* At least one character ("" is not valid)
* Allowed characters are uppercase / lowercase latin letters and digits from 0 to 9
* No whitespaces/underscore

The given solution is not bad, but it's still possible to trick the regular expression, can you figure out why?

### Tags 
Bugs; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Strings
- - -
## Count IP Addresses
[Count IP Addresses](https://www.codewars.com/kata/count-ip-addresses)
Category : algorithms

### Description 

Write a function that accepts a starting and ending IPv4 address, and returns the number of IP addresses from `start` to `end`, excluding the `end` IP address. 



All input to the `ipsBetween` function will be valid IPv4 addresses in the form of strings. The `end`ing address will be  at least one address higher than the `start`ing address.





Examples:



`ipsBetween("10.0.0.0", "10.0.0.50")` => returns 50 


`ipsBetween("10.0.0.0", "10.0.1.0")` => returns 256 


`ipsBetween("20.0.0.10", "20.0.1.0")` => returns 246

### Tags 
Algorithms; Parsing; Logic; Strings
- - -
## Square Matrix Multiplication
[Square Matrix Multiplication](https://www.codewars.com/kata/square-matrix-multiplication)
Category : algorithms

### Description 

Write a function that accepts two square (nxn) matrices (two dimensional arrays), and returns the product of the two. Only square matrices will be passed in.



How to multiply two square matrices: 



We are given two matrices, A and B, of size 2x2 (Kata tests are not limited to 2x2). Matrix C, the solution, will be equal to the product of A and B. To fill in cell [ 0 ][ 0 ] of matrix C, you need to compute: A[0][0] \* B[0][0] + A[0][1] \* B[1][0]. 



More general: To fill in cell [ i ][ j ] of  matrix C, you need to first multiply the elements in the i'th row of matrix A by the elements in the j'th column of matrix B, then take the sum of all those products. This will give you the value for cell [ i ][ j ] in matrix C. 



Example(Matrix A \* Matrix B = Matrix C):


|1 2|


|3 2| 


\*


|3 2| 


|1 1|


=


|5 4 |


|11 8| 





Calculating the above C values: 


C[0][0] = A[0][0] \* B[0][0] + A[0][1] \* B[1][0] = 1 \* 3 + 2 \* 1 = 5

C[0][1] = A[0][0] \* B[0][1] + A[0][1] \* B[1][1] = 1 \* 2+ 2 \* 1 = 4

C[1][0] = A[1][0] \* B[0][0] + A[1][1] \* B[1][0] = 3 \* 3 + 2 \* 1 = 11

C[1][1] = A[1][0] \* B[0][1] + A[1][1] \* B[1][1] = 3 \* 2 + 2 \* 1 = 8

Link to Wikipedia explaining matrix multiplication (look at the square matrix example): 


http://en.wikipedia.org/wiki/Matrix_multiplication#Examples_2

### Tags 
Algorithms; Graphs; Data Structures; Arithmetic; Mathematics; Logic; Numbers; Linear Algebra; Algebra; Loops; Control Flow; Basic Language Features; Fundamentals
- - -
## Sort arrays - 3
[Sort arrays - 3](https://www.codewars.com/kata/sort-arrays-3)
Category : algorithms

### Description 

This time the input is an array of course-ids that are formatted in the following way:
```ruby
name-yymm
```
The return of the function shall first be sorted by 
**yymm**
, then by the name (which varies in length).

### Tags 
Algorithms; Sorting; Logic; Arrays; Data Types
- - -
## #Hashtag
[#Hashtag](https://www.codewars.com/kata/number-hashtag)
Category : algorithms

### Description 

You start working for a fancy new startup hoping to revolutionize social networking! *GASP!* They had this great idea that users should be able to specify relevant keywords to their posts using an ingenious idea by prefixing those keywords with the pound sign (#). Your job is to extract those keywords so that they can be used later on for whatever purposes. 

**Note:** 

* Pound signs alone do not count, for example: the string "#" would return an empty array.
* If a word is preceded by more than one hashtag, only the last hashtag counts (e.g. "##alot" would return ["alot"])
* Hashtags cannot be within the middle of a word (e.g. "in#line hashtag" returns an empty array)
* Hashtags must precede alphabetical characters (e.g. "#120398" or "#?" are invalid)
 

**Input:** String of words, where some words may contain a hashtag.

**Output:** Array of strings that were prefixed with the hashtag, but do not contain the hashtag.

### Tags 
Algorithms; Strings; Data Types; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals
- - -
## Substituting Variables Into Strings: Class Template
[Substituting Variables Into Strings: Class Template](https://www.codewars.com/kata/substituting-variables-into-strings-class-template)
Category : reference

### Description 

For this kata you will complete the create_class_template method so that it returns ruby template code in the form of a string. The solution excepts two arguments that will be used as the dynamic portions of the template code. The first argument (class_name) will be used to name the class. The 2nd argument (argument_name) will be used to create an initializer with the argument name as its argument. The initializer method will also assign the argument passed in as a local variable. 

For example, if we wanted to create a "Warrior" class with a "name" initializer argument, the actual class template code would look like this:
```
class Warrior
  def initialize(name)
    @name = name
  end
end
```

The method to create this code would be called like so:

```ruby
code = create_class_template("Warrior", "name")
# code should equal (you may have to scroll)
# "class Warrior\n  def initialize(name)\n    @name = name    \n  end\nend"
```

**NOTE:** Each indent level should use two spaces

### Tags 
Strings; Data Types
- - -
## Strip Comments
[Strip Comments](https://www.codewars.com/kata/strip-comments)
Category : algorithms

### Description 

Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out. 

**Example:**

Given an input string of:
```
apples, pears # and bananas
grapes
bananas !apples
```

The output expected would be:
```
apples, pears
grapes
bananas
```

The code would be called like so:

```javascript
var result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
// result should == "apples, pears\ngrapes\nbananas"

```

```coffeescript
result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\nograpes\nbananas"

```

```ruby
result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"

```

### Tags 
Algorithms; Strings; Data Types
- - -
## Throwing Darts
[Throwing Darts](https://www.codewars.com/kata/throwing-darts)
Category : algorithms

### Description 

You've just recently been hired to calculate scores for a  Dart Board game! 



Scoring specifications:


0 points - radius above 10


5 points - radius between 5 and 10 inclusive


10 points - radius less than 5



If all radiuses are less than 5, award 100 BONUS POINTS!



Write a function that accepts an array of radiuses (can be integers and/or floats), 

 and returns a total score using the above specification.


 An empty array should return 0.



Examples:


scoreThrows( [1, 5, 11] ) => returns 15 


scoreThrows( [15, 20, 30] ) => returns 0 


scoreThrows( [1, 2, 3, 4] ) => returns 140

### Tags 
Algorithms; Loops; Control Flow; Basic Language Features; Fundamentals
- - -
## Matrix Addition
[Matrix Addition](https://www.codewars.com/kata/matrix-addition)
Category : algorithms

### Description 

Write a function that accepts two square matrices (nxn two dimensional arrays), and return the sum of the two. Both matrices being passed into the function will be of size nxn (square), containing only integers.



How to sum two matrices: 


Take each cell [n][m] from the first matrix, and add it with the [n][m] cell from the second matrix. This will be cell [n][m] in the solution matrix.



Visualization: 


|1 2 3|


|3 2 1| 


|1 1 1|


+


|2 2 1|


|3 2 3| 


|1 1 3|


=


|3 4 4|


|6 4 4| 


|2 2 4|





Example function call:


matrixAddition( [ [1, 2, 3], [3, 2, 1,], [1, 1, 1] ], [ [2, 2, 1], [3, 2, 3], [1, 1, 3] ] );


returns [ [3, 4, 4], [6, 4, 4], [2, 2, 4] ]

### Tags 
Algorithms; Graphs; Data Structures; Arithmetic; Mathematics; Logic; Numbers; Arrays; Data Types; Loops; Control Flow; Basic Language Features; Fundamentals
- - -
## Return substring instance count - 2
[Return substring instance count - 2](https://www.codewars.com/kata/return-substring-instance-count-2)
Category : algorithms

### Description 

Complete the solution so that it returns the number of times the search_text is found within the full_text.

```ruby
search_substr( fullText, searchText, allowOverlap = true )
```
```coffeescript
searchSubstr( fullText, searchText, allowOverlap = true )
```
```javascript
searchSubstr( fullText, searchText, allowOverlap = true )
```

so that overlapping solutions are (not) counted. If the searchText is empty, it should return "0". Usage examples:

```ruby
search_substr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
search_substr('aaabbbcccc', 'bbb') # should return 1
search_substr( 'aaa', 'aa' ) # should return 2
search_substr( 'aaa', '' ) # should return 0
search_substr( 'aaa', 'aa', false ) # should return 1
```
```coffeescript
searchSubstr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
searchSubstr('aaabbbcccc', 'bbb') # should return 1
searchSubstr( 'aaa', 'aa' ) # should return 2
searchSubstr( 'aaa', '' ) # should return 0
searchSubstr( 'aaa', 'aa', false ) # should return 1
```
```javascript
searchSubstr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
searchSubstr('aaabbbcccc', 'bbb') # should return 1
searchSubstr( 'aaa', 'aa' ) # should return 2
searchSubstr( 'aaa', '' ) # should return 0
searchSubstr( 'aaa', 'aa', false ) # should return 1
```

### Tags 
Algorithms; Strings; Data Types; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Search; Logic
- - -
## Fluent Calculator
[Fluent Calculator](https://www.codewars.com/kata/fluent-calculator)
Category : reference

### Description 

The Kata is inspired by [Calculating with Functions](http://www.codewars.com/dojo/katas/525f3eda17c7cd9f9e000b39/play/javascript) Kata for JavaScript.


The goal is to implement simple calculator which uses fluent syntax:

```
Calc.new.one.plus.two             # Should return 3
Calc.new.five.minus.six           # Should return -1
Calc.new.seven.times.two          # Should return 14
Calc.new.nine.divided_by.three     # Should return 3
```

There are only four operations that are supported (plus, minus, times, divided_by) and 10 digits (zero, one, two, three, four, five, six, seven, eight, nine).

Each calculation consists of one operation only.

### Tags 
Fundamentals; Mathematics; Algorithms; Logic; Numbers; Metaprogramming; Programming Paradigms; Advanced Language Features; Arithmetic
- - -
## (Ready for) Prime Time
[(Ready for) Prime Time](https://www.codewars.com/kata/ready-for-prime-time)
Category : algorithms

### Description 

We need prime numbers and we need them now!

Write a method that takes a maximum bound and returns all primes starting with 0 up-to and including the maximum bound.

For example:

```
prime(11);
```
Should return an array that looks like this:

```
[2,3,5,7,11]
```

### Tags 
Algorithms; Mathematics; Logic; Numbers; Data Types; Utilities
- - -
## Exponent method
[Exponent method](https://www.codewars.com/kata/exponent-method)
Category : algorithms

### Description 

Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:

* power(2, 3)   # 8
* power(10, 0)  # 1
* power(-5, 3)  # -125
* power(-4, 2)  # 16

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Extract the domain name from a URL
[Extract the domain name from a URL](https://www.codewars.com/kata/extract-the-domain-name-from-a-url-1)
Category : reference

### Description 

Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
```ruby
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
```

### Tags 
Fundamentals; Parsing; Algorithms; Logic; Strings; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms
- - -
## Palindrome chain length
[Palindrome chain length](https://www.codewars.com/kata/palindrome-chain-length)
Category : algorithms

### Description 

Number is a palindrome if it is equal to the number with digits in reversed order.
For example, 5, 44, 171, 4884 are palindromes and 43, 194, 4773 are not palindromes.

Write a method `palindrome_chain_length` which takes a positive number and returns the number of special steps needed to obtain a palindrome. The special step is: "reverse the digits, and add to the original number". If the resulting number is not a  palindrome, repeat the procedure with the sum until the resulting number is a palindrome.

If the input number is already a palindrome, the number of steps is 0.

Input will always be a positive integer.

For example, start with 87:

87 + 78 = 165;
165 + 561 = 726;
 726 + 627 = 1353;
1353 + 3531 = 4884

4884 is a palindrome and we needed 4 steps to obtain it, so `palindrome_chain_length(87)==4`

### Tags 
Algorithms; Logic
- - -
## Bit Counting
[Bit Counting](https://www.codewars.com/kata/bit-counting)
Category : algorithms

### Description 

Write a function that takes an (unsigned) integer as input, and returns the number of bits that are equal to one in the binary representation of that number.

*Example*: The binary representation of `1234` is `10011010010`, so the function should return `5` in this case

### Tags 
Algorithms; Bits; Binary
- - -
## How Many Reindeers?
[How Many Reindeers?](https://www.codewars.com/kata/how-many-reindeers)
Category : algorithms

### Description 

Santa puts all the presents into the huge sack. In order to let his reindeers rest a bit, he only takes as many reindeers with him as he is required to do. The others may take a nap.

Two reindeers are always required for the sleigh and Santa himself. Additionally he needs 1 reindeer per 30 presents. As you know, Santa has 8 reindeers in total, so he can deliver up to 180 presents at once (2 reindeers for Santa and the sleigh + 6 reindeers with 30 presents each).

Complete the function `reindeers()`, which takes a number of presents and returns the minimum numbers of required reindeers. If the number of presents is too high, throw an error.

Examles:

```javascript
reindeers(0); // must return 2
reindeers(1); // must return 3
reindeers(30); // must return 3
reindeers(200); // must throw an error
```

### Tags 
Algorithms; Hacking Holidays
- - -
## Does my number look big in this?
[Does my number look big in this?](https://www.codewars.com/kata/does-my-number-look-big-in-this)
Category : algorithms

### Description 

A [Narcissistic Number](https://en.wikipedia.org/wiki/Narcissistic_number) is a number which is the sum of its own digits, each raised to the power of the number of digits.

For example, take 153 (3 digits):
```
    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
```
and 1634 (4 digits):
```
    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
```

The Challenge:

Your code must return true or false depending upon whether the given number is a Narcissistic number.

Error checking for text strings or other invalid inputs is not required, only valid integers will be passed.

### Tags 
Algorithms; Numbers; Data Types
- - -
## Split Strings
[Split Strings](https://www.codewars.com/kata/split-strings)
Category : algorithms

### Description 

Complete the solution so that it splits the string into pairs of two characters.  If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:
``` javascript
solution('abc') // should return ['ab', 'c_']
solution('abcdef') // should return ['ab', 'cd', 'ef']
```
``` coffeescript
solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']
```
``` ruby
solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']
```

### Tags 
Algorithms; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Strings; Data Types
- - -
## Turn String Input into Hash
[Turn String Input into Hash](https://www.codewars.com/kata/turn-string-input-into-hash)
Category : algorithms

### Description 

Please write a function that will take a string as input and return a hash. The string will be formatted as such. The key will always be a symbol and the value will always be an integer.

```ruby
"a=1, b=2, c=3, d=4"
```

This string should return a hash that looks like
```ruby
{ :a => 1, :b => 2, :c => 3, :d => 4}
```

### Tags 
Algorithms; Hashes; Data Structures; Parsing; Logic; Strings
- - -
## Remove anchor from URL
[Remove anchor from URL](https://www.codewars.com/kata/remove-anchor-from-url)
Category : reference

### Description 

Complete the function/method so that it returns the url with anything after the anchor (#) removed. 

Examples:

```javascript
// returns 'www.codewars.com'
removeUrlAnchor('www.codewars.com#about')

// returns 'www.codewars.com?page=1' 
removeUrlAnchor('www.codewars.com?page=1') 

```

```coffeescript
# returns 'www.codewars.com'
removeUrlAnchor('www.codewars.com#about')

# returns 'www.codewars.com?page=1' 
removeUrlAnchor('www.codewars.com?page=1') 

```

```ruby
# returns 'www.codewars.com'
remove_url_anchor('www.codewars.com#about')

# returns 'www.codewars.com?page=1' 
remove_url_anchor('www.codewars.com?page=1') 

```

### Tags 
Fundamentals; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Strings; Data Types
- - -
## Title Case
[Title Case](https://www.codewars.com/kata/title-case)
Category : reference

### Description 

A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words).  The list of minor words will be given as a string with each word separated by a space.  Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

Example:
```javascript
titleCase('a clash of KINGS', 'a an the of') // should return: 'A Clash of Kings'
titleCase('THE WIND IN THE WILLOWS', 'The In') // should return: 'The Wind in the Willows'
titleCase('the quick brown fox') // should return: 'The Quick Brown Fox'
```
```coffeescript
titleCase('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
titleCase('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
titleCase('the quick brown fox') # should return: 'The Quick Brown Fox'
```
```c
titleCase('a clash of KINGS', 'a an the of') // should return: 'A Clash of Kings'
titleCase('THE WIND IN THE WILLOWS', 'The In') // should return: 'The Wind in the Willows'
titleCase('the quick brown fox') // should return: 'The Quick Brown Fox'
```
```ruby
title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
```
```python
title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
```
```haskell
titleCase "a an the of" "a clash of KINGS" -- should return: "A Clash of Kings"
titleCase "The In" "THE WIND IN THE WILLOWS" -- should return: "The Wind in the Willows"
titleCase "" "the quick brown fox" -- should return: "The Quick Brown Fox"
```

### Tags 
Fundamentals; Strings; Data Types; Parsing; Algorithms; Logic
- - -
## Get config values of hash
[Get config values of hash](https://www.codewars.com/kata/get-config-values-of-hash)
Category : reference

### Description 

Write a simple method for the Hash-class that can get the configuration-value from a JSON-interpreted hash. Its signature is:
```ruby
Hash.get_value( default, key1, ... )
```

key1, ... refer to the hash-keys of the JSON-interpreted hash, which is a hash of hash values. If the path of keys is found, it should return the found value, else it should return the default value.

Here are some examples on how to use it:

```ruby
config = { :files => { :mode => 0x777 }, :name => "config" }

config.get_value( 0x0, :files, :mode ) == 0x777
config.get_value( "", :name ) == "config"
config.get_value( 80, :port ) == 80
config.get_value( "cfg", :files, :extension ) == "cfg"
```

### Tags 
Fundamentals; Hashes; Data Structures
- - -
## Stop gninnipS My sdroW!
[Stop gninnipS My sdroW!](https://www.codewars.com/kata/stop-gninnips-my-sdrow)
Category : algorithms

### Description 

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.





Examples:



```spinWords( "Hey fellow warriors" )``` => returns "Hey wollef sroirraw" 


```spinWords( "This is a test") ``` => returns "This is a test" 


```spinWords( "This is another test" ) ```=> returns "This is rehtona test"

### Tags 
Algorithms; Strings; Data Types; Formatting; Logic
- - -
## Don't rely on luck.
[Don't rely on luck.](https://www.codewars.com/kata/dont-rely-on-luck)
Category : games

### Description 

The test fixture I use for this kata is pre-populated.

It will compare your guess to a random number generated in Ruby by:
```ruby 
(Kernel::rand() * 100 + 1).floor
```
in Javascript/CoffeeScript by:
```javascript
Math.floor(Math.random() * 100 + 1)
```

You can pass by relying on luck or skill but try not to rely on luck.

"The power to define the situation is the ultimate power." - Jerry Rubin

Good luck!

### Tags 
Puzzles; Games
- - -
## Greed is Good
[Greed is Good](https://www.codewars.com/kata/greed-is-good)
Category : algorithms

### Description 

Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

``` 
 Three 1's => 1000 points
 Three 6's =>  600 points
 Three 5's =>  500 points
 Three 4's =>  400 points
 Three 3's =>  300 points
 Three 2's =>  200 points
 One   1   =>  100 points
 One   5   =>   50 point
```

A single die can only be counted once in each roll.  For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

Example scoring

```
 Throw       Score
 ---------   ------------------
 5 1 3 4 1   50 + 2 * 100 = 250
 1 1 1 3 1   1000 + 100 = 1100
 2 4 4 5 4   400 + 50 = 450
```

### Tags 
Algorithms
- - -
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
## Find the Mine!
[Find the Mine!](https://www.codewars.com/kata/find-the-mine)
Category : algorithms

### Description 

You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you. 

Write a function `mineLocation` that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer `1` in the 2D array. Areas in the 2D array that are not the mine will be represented as `0`s. 

The location returned should be an array where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

### Examples:
`mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] )` => returns `[0, 0]` 


`mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] )` => returns `[1, 1]` 


`mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] )` => returns `[2, 1]`

### Tags 
Algorithms; Arrays; Data Types; Search; Logic
- - -
## No Modulo
[No Modulo](https://www.codewars.com/kata/no-modulo)
Category : reference

### Description 

Your goal is to write the solution method, which should return the result of applying the 'modulo 16' operation to any given positive integer.

Example usage:

    solution(4)  # => 4
    solution(16) # => 0
    solution(18) # => 2

Note: The following methods have been disabled

    Fixnum#+
    Fixnum#-
    Fixnum#*
    Fixnum#/
    Fixnum#%
    Fixnum#modulo
    Fixnum#divmod

### Tags 
Fundamentals
- - -
## Email Validation
[Email Validation](https://www.codewars.com/kata/email-validation)
Category : algorithms

### Description 

Email addresses are notoriously difficult to validate.

Create a method that takes an email and returns true if valid, false otherwise.

Tip: It doesn't have to be perfect.

For example:
```ruby
validate('joe@example.com') => true
validate('joe') => false 
```

Here's tool that may help: http://rubular.com/

I suggest not using some code that you find on the internet. Yes, there are regexes that do email validation. But what is the purpose of copying and pasting?

Also, you do not need to use a regex. There are many ways of solving this.

### Tags 
Algorithms; Validation; Logic; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Strings; Data Types; Utilities
- - -
## Convert PascalCase string into snake_case
[Convert PascalCase string into snake_case](https://www.codewars.com/kata/convert-pascalcase-string-into-snake-case)
Category : algorithms

### Description 

Complete the function/method so that it takes CamelCase string and returns the string in snake_case notation. Lowercase characters can be numbers. If method gets number, it should return string.

Examples:
```ruby
# returns test_controller
to_underscore('TestController')

# returns movies_and_books
to_underscore('MoviesAndBooks')

# returns app7_test
to_underscore('App7Test')

# returns "1"
to_underscore(1)
```

``` javascript
//  returns test_controller
toUnderscore('TestController');

// returns movies_and_books
toUnderscore('MoviesAndBooks');

// returns app7_test
toUnderscore('App7Test');

// returns "1"
toUnderscore(1);
```

``` coffeescript  
#  returns test_controller
toUnderscore 'TestController'

# returns movies_and_books
toUnderscore 'MoviesAndBooks'

# returns app7_test
toUnderscore 'App7Test'

# returns "1"
toUnderscore 1
```

### Tags 
Algorithms; Strings; Data Types; Formatting; Logic
- - -
## Where my anagrams at?
[Where my anagrams at?](https://www.codewars.com/kata/where-my-anagrams-at)
Category : algorithms

### Description 

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

```
'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false
```

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

```
anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
```

### Tags 
Algorithms; Strings; Data Types
- - -
## Twisted Sum
[Twisted Sum](https://www.codewars.com/kata/twisted-sum)
Category : algorithms

### Description 

Find the sum of the digits of all the numbers from 1 to N (both ends included).

For N = 10 the sum is 1+2+3+4+5+6+7+8+9+(1+0) = 46

For N = 11 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1) = 48

For N = 12 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1) +(1+2)= 51

### Tags 
Algorithms; Numbers; Data Types; Arithmetic; Mathematics; Logic
- - -
## WeIrD StRiNg CaSe
[WeIrD StRiNg CaSe](https://www.codewars.com/kata/weird-string-case)
Category : algorithms

### Description 

Write a function `toWeirdCase` (`weirdcase` in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(`' '`). Spaces will only be present if there are multiple words. Words will be separated by a single space(`' '`).

### Examples:
Javascript/CoffeeScript:
```javascript
toWeirdCase( "String" );//=> returns "StRiNg"
toWeirdCase( "Weird string case" );//=> returns "WeIrD StRiNg CaSe"
```

Ruby:
```ruby
weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
```

### Tags 
Algorithms; Utilities; Strings; Data Types
- - -
## SantaClausable Interface
[SantaClausable Interface](https://www.codewars.com/kata/santaclausable-interface)
Category : reference

### Description 

You probably know, that in Javascript (and also Ruby) there is no concept of interfaces. There is only a concept of inheritance, but you can't assume that a certain method or property exists, just because it exists in the parent prototype / class. We want to find out, whether a given object fulfils the requirements to implement the "SantaClausable" *interface*. We need to implement a method which checks for this *interface*.

## Rules

The SantaClausable interface is implemented, if all of the following methods are defined on an object:

* `sayHoHoHo()` / `say_ho_ho_ho`
* `distributeGifts()` / `distribute_gifts`
* `goDownTheChimney()` / `go_down_the_chimney`

## Example

```javascript
var santa = {
    sayHoHoHo: function() { console.log('Ho Ho Ho!') },
    distributeGifts: function() { console.log('Gifts for all!'); },
    goDownTheChimney: function() { console.log('*whoosh*'); }
};

var notSanta = {
    sayHoHoHo: function() { console.log('Oink Oink!') }
    // no distributeGifts() and no goDownTheChimney()
};

isSantaClausable(santa); // must return TRUE
isSantaClausable(notSanta); // must return FALSE
```

```coffeescript
santa =
  sayHoHoHo: ->
    console.log "Ho Ho Ho!"

  distributeGifts: ->
    console.log "Gifts for all!"

  goDownTheChimney: ->
    console.log "*whoosh*"

notSanta = sayHoHoHo: ->
  console.log "Oink Oink!"
  # no distributeGifts() and no goDownTheChimney()

isSantaClausable santa # must return TRUE
isSantaClausable notSanta # must return FALSE
```

```ruby
class SantaClaus
    def say_ho_ho_ho
        # Ho Ho Ho!
    end
    
    def distribute_gifts
        # Gifts for all!
    end
    
    def go_down_the_chimney
        # Whoosh!
    end
end
  
class NotSantaClaus
    def say_ho_ho_ho
    end
end

is_santa_clausable(SantaClaus.new) # must return TRUE
is_santa_clausable(NotSantaClaus.new) # must return FALSE
```
## Additional Information on this Topic

* [Duck Typing](http://en.wikipedia.org/wiki/Duck_typing) (Wikipedia)

### Tags 
Fundamentals; Hacking Holidays; Interfaces; Basic Language Features; Object-oriented Programming; Programming Paradigms; Dynamic Programming
- - -
## Largest 5 digit number in a series
[Largest 5 digit number in a series](https://www.codewars.com/kata/largest-5-digit-number-in-a-series)
Category : algorithms

### Description 

In the following 6 digit number:
```
283910
```
91 is the greatest sequence of 2 digits.

Complete the solution so that it returns the largest five digit number found within within the number given.. The number will be passed in as a string of only digits. It should return a five digit integer. The number passed may be as large as 1000 digits. 


*Adapted from ProjectEuler.net*

### Tags 
Algorithms; Numbers; Data Types
- - -
## Custom Enumerators - Fibonacci
[Custom Enumerators - Fibonacci](https://www.codewars.com/kata/custom-enumerators-fibonacci)
Category : reference

### Description 

Ruby has very powerful [enumerator](http://ruby-doc.org/core-1.9.3/Enumerator.html) [support](http://ruby-doc.org/core-1.9.3/Enumerable.html), including the ability to create your own custom enumerators on the fly. 

``` ruby
digits = Enumerator.new do |y|
  i = 0
  loop do
    y.yield i
    i += 1
  end
end

digits.next # => 0
digits.next # => 1

digits.take_while {|n| n  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] 
```

Create an enumerator "fib" that outputs successive [fibonacci numbers](http://en.wikipedia.org/wiki/Fibonacci_number).

For example:

``` ruby
fib.next # => 1
fib.next # => 1
fib.next # => 2

fib.take_while {|n| n  [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] 
```

** NOTE: The first value returned from the enumerator will be 1, not 0**

### Tags 
Fundamentals; Iterators; Control Flow; Object-oriented Programming; Basic Language Features; Programming Paradigms
- - -
## Guess The Gifts!
[Guess The Gifts!](https://www.codewars.com/kata/guess-the-gifts)
Category : algorithms

### Description 

It's Christmas! You had to wait the whole year for this moment. You can already see all the presents under the Christmas tree. But you have to wait for the next morning in order to unwrap them. You really want to know, what's inside those boxes. But as a clever child, you can do your assumptions already.

You know, you were a good child this year. So you may assume, that you'll only get things from your wishlist. You see those presents, you can lift them and you can shake them a bit. Now you can make you assumptions about what you'll get.

## Your Task

You will be given a wishlist (array), containing all possible items. Each item is in the format: `{name: "toy car", size: "medium", clatters: "a bit", weight: "medium"}` (Ruby version has an analog hash structure, see example below)

You also get a list of presents (array), you see under the christmas tree, which have the following format each: `{size: "small", clatters: "no", weight: "light"}`

Your task is to create a list of all possible presents you might get.

## Rules

* Possible values for `size`: "small", "medium", "large"
* Possible values for `clatters`: "no", "a bit", "yes"
* Possible values for `weight`: "light", "medium", "heavy"
* The return value must be an array of the names of items from your wishlist, e.g. `["Toy Car", "Card Game"]`
* Don't add any item more than once to the result
* The order of names in the returned array doesn't matter
* It's possible, that multiple items from your wish list have the same attribute values. If they match the attributes of one of the presents, add all of them.

## Example

```javascript
var wishlist = [
    {name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},
    {name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},
    {name: "Card Game", size: "small", clatters: "no", weight: "light"}
];

var presents = [
    {size: "medium", clatters: "a bit", weight: "medium"},
    {size: "small", clatters: "yes", weight: "light"}
];

guessGifts(wishlist, presents); // must return ["Toy Car", "Mini Puzzle"]
```

```coffeescript
wishlist = [
    {name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},
    {name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},
    {name: "Card Game", size: "small", clatters: "no", weight: "light"}
]

presents = [
    {size: "medium", clatters: "a bit", weight: "medium"},
    {size: "small", clatters: "yes", weight: "light"}
]

guessGifts(wishlist, presents); # must return ["Toy Car", "Mini Puzzle"]
```

```ruby
wishlist = [
    {:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
    {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
    {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}
]

presents = [
    {:size => "medium", :clatters => "a bit", :weight => "medium"},
    {:size => "small", :clatters => "yes", :weight => "light"}
]

guess_gifts(wishlist, presents) # must return ['toy car', 'mini puzzle']
```

### Tags 
Algorithms; Hacking Holidays
- - -
## RGB To Hex Conversion
[RGB To Hex Conversion](https://www.codewars.com/kata/rgb-to-hex-conversion)
Category : algorithms

### Description 

The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned.  The valid decimal values for RGB are 0 - 255.  Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value. 

The following are examples of  expected output values:
```javascript
rgb(255, 255, 255) // returns FFFFFF
rgb(255, 255, 300) // returns FFFFFF
rgb(0,0,0) // returns 000000
rgb(148, 0, 211) // returns 9400D3
```
```coffeescript
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```
```ruby
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```

### Tags 
Algorithms
- - -
## Convert string to camel case
[Convert string to camel case](https://www.codewars.com/kata/convert-string-to-camel-case)
Category : algorithms

### Description 

Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized. 

Examples:

```javascript
// returns "theStealthWarrior"
toCamelCase("the-stealth-warrior") 

// returns "TheStealthWarrior"
toCamelCase("The_Stealth_Warrior") 
```

```coffeescript
# returns "theStealthWarrior"
toCamelCase("the-stealth-warrior") 

# returns "TheStealthWarrior"
toCamelCase("The_Stealth_Warrior") 
```

```ruby
# returns "theStealthWarrior"
to_camel_case("the-stealth-warrior") 

# returns "TheStealthWarrior"
to_camel_case("The_Stealth_Warrior") 
```

### Tags 
Algorithms; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Strings
- - -
## Two Oldest Ages
[Two Oldest Ages](https://www.codewars.com/kata/two-oldest-ages-1)
Category : algorithms

### Description 

The two oldest ages function/method needs to be completed. It should take an array of numbers as its argument and return the **two highest numbers within the array**. The returned value should be an array in the format **[second oldest age,  oldest age]**. 

The order of the numbers passed in could be any order. The following are some examples of what the method should return (shown in different languages but the logic will be the same between all three). 

```javascript
twoOldestAges( [1, 2, 10, 8] ) // should return [8, 10]
```

```coffeescript
twoOldestAges [34, 45, 12, 98, 0, 23] # should return [45, 98]
```

```ruby
two_oldest_ages([1, 3, 10, 0]) # should return [3, 10]
```

### Tags 
Algorithms; Arrays; Data Types
- - -
## Valid Phone Number
[Valid Phone Number](https://www.codewars.com/kata/valid-phone-number)
Category : algorithms

### Description 

Write a function that accepts a string, and returns true if it is in the form of a phone number. 

Assume that any integer from 0-9 in any of the spots will produce a valid phone number.



Only worry about the following format:


(123) 456-7890   (don't forget the space after the close parentheses) 

 


Examples:


validPhoneNumber("(123) 456-7890")  =>  returns true


validPhoneNumber("(1111)555 2345")  => returns false


validPhoneNumber("(098) 123 4567")  => returns false

### Tags 
Algorithms; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Strings; Validation; Logic
- - -
## Create Phone Number
[Create Phone Number](https://www.codewars.com/kata/create-phone-number)
Category : algorithms

### Description 

Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.



Example:


createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) => returns "(123) 456-7890"



The returned format must be correct in order to complete this challenge. 


Don't forget the space after the closing parenthese!

### Tags 
Algorithms; Arrays; Data Types; Strings; Loops; Control Flow; Basic Language Features; Fundamentals; Formatting; Logic; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms
- - -
## Square(n) Sum
[Square(n) Sum](https://www.codewars.com/kata/square-n-sum)
Category : reference

### Description 

Complete the squareSum method so that it squares each number passed into it and then sums the results together. 

For example:
```javascript
squareSum([1,2, 2]); // should return 9
```
```coffeescript
squareSum([1,2, 2]) # should return 9
```
```ruby
squareSum([1,2, 2]) # should return 9
```

### Tags 
Fundamentals
- - -
## Ruby Array invoke instance method
[Ruby Array invoke instance method](https://www.codewars.com/kata/ruby-array-invoke-instance-method)
Category : algorithms

### Description 

Extend the Array class so that it supports an "invoke" instance method. The method will be called when someone wishes to execute/invoke a method on each of the items in the array. 

This method will be a more advanced alternative to using the each/to_proc shorthand:
```ruby
array_items.each(&:method_to_call) 
```

The invoke method signature will take a method name, any number of arguments to be passed to the invoked method and optionally a block that will be used to determine if the method should be called for a particular item or not. The method will return an array containing the result from each invoked method (one result per each item in the array). Items that do not have their method invoked will not be included in the array.

For example, if you wanted to call the "update" method with two arguments on all non-nil objects within an array called "items":
```ruby
# contrived class example used to provide a method that we could call
class ExampleItem
  # notice that this method always returns "updated"
  def update(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
    "updated"
  end
end

items = [ExampleItem.new, nil, ExampleItem.new]

update_results = items.invoke(:update, "argument 1", "argument 2") {|item| item != nil}
# update_result would == ['updated', 'updated']
```

### Tags 
Algorithms; Arrays; Data Types
- - -
## Calculating with Functions
[Calculating with Functions](https://www.codewars.com/kata/calculating-with-functions)
Category : reference

### Description 

This time we want to write calculations using functions and get the results. Let's have a look at some examples:

```javascript
seven(times(five())); // must return 35
four(plus(nine())); // must return 13
eight(minus(three())); // must return 5
six(dividedBy(two())); // must return 3
```

```ruby
seven(times(five)) # must return 35
four(plus(nine)) # must return 13
eight(minus(three)) # must return 5
six(divided_by(two)) # must return 3
```

Requirements:

* There must be a function for each number from 0 ("zero") to 9 ("nine")
* There must be a function for each of the following mathematical operations: plus, minus, times, dividedBy (`divided_by` in Ruby)
* Each calculation consist of exactly one operation and two numbers
* The most outer function represents the left operand, the most inner function represents the right operand

### Tags 
Fundamentals; Functions; Control Flow; Basic Language Features; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions
- - -
## Boiled Eggs
[Boiled Eggs](https://www.codewars.com/kata/boiled-eggs)
Category : algorithms

### Description 

You are the greatest chef on earth. No one boils eggs like you! Your restaurant is always full of guests, who love your boiled eggs. But when there is a greater order of boiled eggs, you need some time, because you have only one pot for your job. How much time do you need?

## Your Task

Implement a function, which takes a non-negative integer, representing the number of eggs to boil. It must return the time in minutes (integer), which it takes to have all the eggs boiled.

## Rules

* you can put at most 8 eggs into the pot at once
* it takes 5 minutes to boil an egg
* we assume, that the water is boiling all the time (no time to heat up)
* for simplicity we also don't consider the time it takes to put eggs into the pot or get them out of it

## Example

```javascript
cookingTime(0); // must return 0
cookingTime(5); // must return 5
cookingTime(10); // must return 10
```

```coffeescript
cookingTime 0 # must return 0
cookingTime 5 # must return 5
cookingTime 10 # must return 10
```

```ruby
cooking_time 0 # must return 0
cooking_time 5 # must return 5
cooking_time 10 # must return 10
```

```haskell
cookingTime  0 `shouldBe` 0
cookingTime  5 `shouldBe` 5
cookingTime 10 `shouldBe` 10
```

### Tags 
Algorithms; Mathematics; Logic; Numbers; Data Types; Rules
- - -
## Multiples of 3 and 5
[Multiples of 3 and 5](https://www.codewars.com/kata/multiples-of-3-and-5)
Category : algorithms

### Description 

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 **below** the number passed in. 

###### *Courtesy of ProjectEuler.net*

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Push a hash/an object into array
[Push a hash/an object into array](https://www.codewars.com/kata/push-a-hash-slash-an-object-into-array)
Category : bug_fixes

### Description 

You are trying to put a hash in ruby or an object in javascript into an array, but it always returns error, solve it and keep it as simple as possible!

### Tags 
Bugs; Arrays; Data Types
- - -
## Elapsed Seconds
[Elapsed Seconds](https://www.codewars.com/kata/elapsed-seconds)
Category : reference

### Description 

Complete the function so that it returns the number of seconds that have elapsed between the start and end times given.  

##### Tips:
- The start/end times are given as Date (JS/CoffeeScript) and Time (Ruby) instances.  
- The start time will always be before the end time.

### Tags 
Fundamentals; Dates/Time; Data Types
- - -
## Function 1 - hello world
[Function 1 - hello world](https://www.codewars.com/kata/function-1-hello-world)
Category : reference

### Description 

Make a simple function called **greet** that returns the most-famous "hello world!".

Although this has been thought as a simple exercise for beginners, other people chimed in and loved to show off how wonderfully complicated you can write "hello world!" - so go for it, create the most beautiful "hello world!"

### Tags 
Fundamentals; Functions; Control Flow; Basic Language Features
- - -
## Basic variable assignment
[Basic variable assignment](https://www.codewars.com/kata/basic-variable-assignment)
Category : bug_fixes

### Description 

This ruby code should store "codewa.rs" as a variable called "name" but it's not working. Can you figure out why?

### Tags 
Bugs
- - -
## Substituting Variables Into Strings: Padded Numbers
[Substituting Variables Into Strings: Padded Numbers](https://www.codewars.com/kata/substituting-variables-into-strings-padded-numbers)
Category : reference

### Description 

Complete the solution so that it returns a formatted string. The return value should equal "Value is VALUE"  where value is a 5 digit padded number. 

Example:

``` ruby
solution(5) # should return "Value is 00005"
```

### Tags 
Fundamentals; Strings; Data Types; String Formatting; Formatting; Algorithms; Logic
- - -
## Triangular Treasure
[Triangular Treasure](https://www.codewars.com/kata/triangular-treasure)
Category : algorithms

### Description 

Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

```
1st (1)   2nd (3)    3rd (6)
*          **        ***
           *         **
                     *
```

You need to return the nth triangular number. You should return 0 for out of range values:

```haskell
all [
  triangular 0     == 0,
  triangular 2     == 3,
  triangular 3     == 6,
  triangular (-10) == 0
] -- True
```

### Tags 
Algorithms; Logic
- - -
## Readability is King
[Readability is King](https://www.codewars.com/kata/readability-is-king)
Category : algorithms

### Description 

We will use the Flesch–Kincaid Grade Level to evaluate the readability of a piece of text. This grade level is an approximation for what schoolchildren are able to understand a piece of text. For example, a piece of text with a grade level of 7 can be read by seventh-graders and beyond.

The way to calculate the grade level is as follows:

    (0.39 * average number of words per sentence) + (11.8 * average number of syllables per word) - 15.59

For example, in the following text:

> The turtle is leaving.

The average number of words per sentence is `4` and the average number of syllables per word is `1.5`. The score is then `(0.39 * 4) +  (11.8 * 1.5) - 15.59` = `3.67`

Write a function that will calculate the Flesch–Kincaid grade level for any given string. Return the grade level rounded off to two decimal points.

**HINT**: Count the number of vowels as an approximation for the number of syllables. But count groups of vowels as one (e.g. deal is one syllable).

Ignore hyphens, dashes, apostrophes, parentheses, ellipses and abbreviations. The tests for the kata are the same as the example fixtures.

### Tags 
Algorithms; Mathematics; Logic; Numbers
- - -
## Function 2 - squaring an argument
[Function 2 - squaring an argument](https://www.codewars.com/kata/function-2-squaring-an-argument)
Category : reference

### Description 

Now you have to write a function called **square** that takes an argument and returns the square of it.

### Tags 
Fundamentals
- - -
## Ruby Person Class Bug
[Ruby Person Class Bug](https://www.codewars.com/kata/ruby-person-class-bug)
Category : bug_fixes

### Description 

The following code was thought to be working properly, however when the code tries to access the age of the person instance it fails. 

```ruby
person = Person.new('Yukihiro', 'Matsumoto', 47)
puts person.full_name
puts person.age 
```

For this exercise you need to fix the code so that it works correctly.

### Tags 
Bugs
- - -
## Mr. Freeze
[Mr. Freeze](https://www.codewars.com/kata/mr-freeze)
Category : reference

### Description 

There is an object/class already created called MrFreeze.  Mark this object as frozen so that no other changes can be made to it.

### Tags 
Fundamentals
- - -
## Ho Ho Ho with Functions!
[Ho Ho Ho with Functions!](https://www.codewars.com/kata/ho-ho-ho-with-functions)
Category : algorithms

### Description 

Santa is learning programming. And what could be the first program, he wants to write? Yes, the "Hello world!" of Christmas: "Ho Ho Ho!". He wants to write a function `ho()`, which should have the following return values:

```javascript
ho(); // should return "Ho!"
ho(ho()); // should return "Ho Ho!"
ho(ho(ho())); // should return "Ho Ho Ho!"
```

Unfortunately he couldn't find any tutorial, which explains, how he could implement that. Can you help him?

Rules:

* each call of `ho()` must add a "Ho" to the string
* the "Ho"'s must be separated by a space
* at the end of the string, there must be an exclamation mark (`!`), without a space

### Tags 
Algorithms; Hacking Holidays; Functions; Control Flow; Basic Language Features; Fundamentals
- - -
## Grouped by commas
[Grouped by commas](https://www.codewars.com/kata/grouped-by-commas)
Category : algorithms

### Description 

Finish the solution so that it takes an input 'n' (integer) and returns a string that is the
decimal representation of the number grouped by commas after every 3 digits.

Assume: 0  "1"

10 -> "10"

100 -> "100"

1000 -> "1,000"

10000 -> "10,000"

100000 -> "100,000"

1000000 -> "1,000,000"

35235235 -> "35,235,235"

### Tags 
Algorithms; String Formatting; Formatting; Logic; Strings; Numbers; Data Types
- - -
## Line Type Parser
[Line Type Parser](https://www.codewars.com/kata/line-type-parser)
Category : algorithms

### Description 

We need a method for parsing an array of strings to see which of 3 categories they fall into:

* :alpha strings contain the word "alpha"
* :beta strings contain the word "beta"
* :unknown strings don't contain either "alpha" or "beta"
* :unknown is also used for nil entries
* No string will contain both "alpha" and "beta"
* The strings can contain alpha and beta in any case (e.g. "Alpha", "BeTa")

The input will be an array containing strings and nils.
The output should be an array containing :alpha, :beta and :unknown symbols, based on the string at that index in the input array.

For example, the input:
```
["I'm Alpha", "No idea", "beta tester", nil]
```
should result in:
```
[:alpha, :unknown, :beta, :unknown]
```

### Tags 
Algorithms; Strings; Data Types; Parsing; Logic; Control Flow; Basic Language Features; Fundamentals
- - -
## Sort Santa's Reindeer
[Sort Santa's Reindeer](https://www.codewars.com/kata/sort-santas-reindeer)
Category : algorithms

### Description 

### Happy Holidays fellow Code Warriors!
Now, Dasher! Now, Dancer! Now, Prancer, and Vixen! On, Comet! On, Cupid! On, Donder and Blitzen! That's the order Santa wanted his reindeer...right? What do you mean he wants them in order by their last names!? Looks like we need your help Code Warrior!

### Sort Santa's Reindeer
Write a function called `sortReindeer` (`sort_reindeer` in Ruby) that accepts an array of Reindeer names, and returns an array with the Reindeer names sorted by their last names.

###Examples
```javascript
sortReindeer([
  "Dasher Tonoyan", 
  "Dancer Moore", 
  "Prancer Chua", 
  "Vixen Hall", 
  "Comet Karavani",        
  "Cupid Foroutan", 
   "Donder Jonker", 
   "Blitzen Claus"
])
```
```coffeescript
sortReindeer([
  "Dasher Tonoyan", 
  "Dancer Moore", 
  "Prancer Chua", 
  "Vixen Hall", 
  "Comet Karavani",        
  "Cupid Foroutan", 
   "Donder Jonker", 
   "Blitzen Claus"
])
```
```ruby
sort_reindeer([
  "Dasher Tonoyan", 
  "Dancer Moore", 
  "Prancer Chua", 
  "Vixen Hall", 
  "Comet Karavani",        
  "Cupid Foroutan", 
   "Donder Jonker", 
   "Blitzen Claus"
])
```
=> returns 

```
[
  "Prancer Chua",
  "Blitzen Claus",
  "Cupid Foroutan", 
  "Vixen Hall", 
  "Donder Jonker", 
  "Comet Karavani",
  "Dancer Moore", 
  "Dasher Tonoyan",
]
```

### Tags 
Algorithms; Hacking Holidays; Sorting; Logic; Arrays; Data Types; Strings
- - -
## Sort the Gift Code
[Sort the Gift Code](https://www.codewars.com/kata/sort-the-gift-code)
Category : reference

### Description 

### Happy Holidays fellow Code Warriors!
Santa's senior gift organizer Elf developed a way to represent up to 26 gifts by assigning a unique alphabetical character to each gift. After each gift was assigned a character, the gift organizer Elf then joined the characters to form the gift ordering code. 

Santa asked his organizer to order the characters in alphabetical order, but the Elf fell asleep from consuming too much hot chocolate and candy canes! Can you help him out?

### Sort the Gift Code
Write a function called `sortGiftCode` (`sort_gift_code` in Ruby) that accepts a string containing up to 26 unique alphabetical characters, and returns a string containing the same characters in alphabetical order.

### Examples:
Javascript/CoffeeScript:
```javascript
sortGiftCode( 'abcdef' ); //=> returns 'abcdef'
sortGiftCode( 'pqksuvy' ); //=> returns 'kpqsuvy'
sortGiftCode( 'zyxwvutsrqponmlkjihgfedcba' ); //=> returns 'abcdefghijklmnopqrstuvwxyz'
```
Ruby:
```ruby
sort_gift_code( 'abcdef' ) #=> returns 'abcdef'
sort_gift_code( 'pqksuvy' ) #=> returns 'kpqsuvy'
sort_gift_code( 'zyxwvutsrqponmlkjihgfedcba' ) #=> returns 'abcdefghijklmnopqrstuvwxyz'
```

Java:
```java
GiftSorter gs = new GiftSorter();
gs.sortGiftCode( 'abcdef' ); //=>  'abcdef'
gs.sortGiftCode( 'pqksuvy' ); //=>  'kpqsuvy'
gs.sortGiftCode( 'zyxwvutsrqponmlkjihgfedcba' ); //=>  'abcdefghijklmnopqrstuvwxyz'
```

Haskell:
```haskell
sortGiftCode "abcdef"                      -- => returns "abcdef"
sortGiftCode "pqksuvy"                     -- => returns "kpqsuvy"
sortGiftCode "zyxwvutsrqponmlkjihgfedcba"  -- => returns "abcdefghijklmnopqrstuvwxyz"
```

### Tags 
Fundamentals; Hacking Holidays; Sorting; Algorithms; Logic; Strings; Data Types
- - -
## Sleigh Authentication
[Sleigh Authentication](https://www.codewars.com/kata/sleigh-authentication)
Category : reference

### Description 

Christmas is coming and many people dreamed of having a ride with Santa's sleigh. But, of course, only Santa himself is allowed to use this wonderful transportation. And in order to make sure, that only he can board the sleigh, there's an authentication mechanism.

Your task is to implement the `authenticate()` method of the sleigh, which takes the name of the person, who wants to board the sleigh and a secret password. If, and only if, the name equals "Santa Claus" and the password is "Ho Ho Ho!" *(yes, even Santa has a secret password with uppercase and lowercase letters and special characters :D)*, the return value must be `true`. Otherwise it should return `false`.

Examples:
```javascript
var sleigh = new Sleigh();
sleigh.authenticate("Santa Claus", "Ho Ho Ho!"); // must return TRUE

sleigh.authenticate("Santa", "Ho Ho Ho!"); // must return FALSE
sleigh.authenticate("Santa Claus", "Ho Ho!"); // must return FALSE
sleigh.authenticate("jhoffner", "CodeWars"); // Nope, even Jake is not allowed to use the sleigh ;)
```

### Tags 
Fundamentals; Hacking Holidays
- - -
## Only One Gift Per Child
[Only One Gift Per Child](https://www.codewars.com/kata/only-one-gift-per-child)
Category : algorithms

### Description 

Santa is handing out gifts in the kindergarten. Many toddlers are around there and everyone should have the opportunity to have a seat on Santa's lap. But there's Peter, a 5 year old boy, who is a bit naughty. He tries to get two gifts. After he got the first one, he lines up again in the queue of children.

But fortunately Santa is not alone. His elves keep a list with the names of the children, which already were on Santa's lap. We know, that each child name is unique. If a child tries to get a second gift, the elves will tell Santa.

OK, let's help Santa and his elves with a simple function `handOutGift()` (`hand_out_gift` in Ruby) which takes the name of the next child. If this child already got a gift, it must throw an error in order to remind Santa.

Javascript Example:

```javascript
handOutGift("Peter");
handOutGift("Alison");
handOutGift("John");
handOutGift("Maria");
handOutGift("Peter"); //

### Tags 
Algorithms; Hacking Holidays; Validation; Logic
- - -
## Milk and Cookies for Santa
[Milk and Cookies for Santa](https://www.codewars.com/kata/milk-and-cookies-for-santa)
Category : reference

### Description 

### Happy Holidays fellow Code Warriors!
It's almost Christmas Eve, so we need to prepare some milk and cookies for Santa! Wait..when exactly did we need to do that?

### Time for Milk and Cookies
Write a function `timeForMilkAndCookies` (`time_for_milk_and_cookies` in Ruby) that accepts a Date object, and returns true if it's Christmas Eve (December 24th), false otherwise. Keep in mind Javascript's Date month is 0 based, while Ruby's Date month isn't.

### Examples
Javascript/CoffeeScript:
```javascript
timeForMilkAndCookies( new Date( 2013, 11, 24 ) ) // December 24, 2013 => returns true
timeForMilkAndCookies( new Date( 2013, 0, 23 ) ) // January 23, 2013 => returns false
timeForMilkAndCookies( new Date( 3000, 11, 24 ) ) //  December 24, 3000 => returns true
```

Ruby:
```ruby
time_for_milk_and_cookies( Date.new( 2013, 12, 24 ) ) # December 24, 2013 => returns true
time_for_milk_and_cookies( Date.new( 2013, 1, 23 ) ) # January 23, 2013 => returns false
time_for_milk_and_cookies( Date.new( 3000, 12, 24 ) ) # December 24, 3000 => returns true
```

### Tags 
Fundamentals; Hacking Holidays; Dates/Time; Data Types
- - -
## Multiply
[Multiply](https://www.codewars.com/kata/multiply)
Category : bug_fixes

### Description 

The code does not execute properly. Try to figure out why.

### Tags 
Bugs
- - -
## Broken Greetings
[Broken Greetings](https://www.codewars.com/kata/broken-greetings)
Category : bug_fixes

### Description 

Correct this code, so that the greet function returns the expected value.

### Tags 
Bugs; Object-oriented Programming; Programming Paradigms
- - -
