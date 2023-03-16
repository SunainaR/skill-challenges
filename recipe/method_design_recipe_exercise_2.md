# [Exercise 2 - Grammar] Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

* Suitable closing punctuation marks are: question mark? exclamation mark! full stop. ellipsis...
* Must start with letter not number


## 2. Design the Method Signature

```ruby
# The `check_grammar` method checks the first character of a string is a capital letter and the last is a closing punctuation mark.

is_sentence = check_grammar(text)

text: a string of words #(e.g. "This is a sentence")
is_sentence: boolean #( i.e. true if the text meets the requirements)

# This method doesn't print anything or have any other side effects
```

## 3. Create Examples as Tests

```ruby

#1
check_grammar("") 
# => fail "Not a sentence."

#2
check_grammar("This is a sentence.") 
# => true

#3
check_grammar("This is a Sentence?") 
# => true

#4
check_grammar("THIS is a sentence!") 
# => true

#5
check_grammar("this is a sentence.") 
# => false

#6
check_grammar("This is a sentence") 
# => false

#7
check_grammar("this is a sentence") 
# => false

#8
check_grammar("this, is, a, list,") 
# => false

#9
check_grammar("This is my list:") 
# => false

#10
check_grammar("This is a sentence...") 
# => true

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._