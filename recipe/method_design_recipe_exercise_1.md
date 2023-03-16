# [Exercise 1 - Calculate Read Time] Method Design Recipe

## 1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have._

User story:
> As a user
<br/>So that I can manage my time
<br/>I want to see an estimate of reading time for a text
<br/>Assuming that I can read 200 words a minute.

Clarifications:
* Return time value in seconds (rounded to nearest second) Note: Would make this minutes and seconds seperately if refactored for readability
* Input text as string
* Could the wpm (words per minute) change
* Assuming punctuation e.g. dashes will be count as word
* Should empty string return zero, prompt user to enter another string or throw an error? (Assume it's the first for simplicity)

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# `extract_upper` extracts uppercase words from a string
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
```

```ruby
#'calculate_read_time' determines the time estimated in seconds for a person to read a text based on their reading rate (words per minute)
read_time = calculate_read_time(text, wpm)

text: a string (e.g. "This is the text you've been waiting for!")
wpm: a number (e.g. 200) #indicating the reading rate in words per minute

# This method will print a string to the screen to show how many seconds it's estimates the read time to be. It won't have any other side-effects.


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

```ruby
# https://thereadtime.com/
calculate_read_time("", 200) => [0]
calculate_read_time("Simple text", 200) => [1]
calculate_read_time("This is the longest text you will ever read!", 200) => [3]
calculate_read_time("This is my autobiography. I was born in 1586 and lived in a cottage by a river - the River Blob. Then left when I was fifty years old...", 200) => [9] 
calculate_read_time([500 WORD STRING], 200) => [126]
calculate_read_time([6000 WORD STRING], 200) => [1513]
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->