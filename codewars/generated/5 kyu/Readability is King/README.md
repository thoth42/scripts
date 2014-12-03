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
