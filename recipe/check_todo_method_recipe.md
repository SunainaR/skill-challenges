# [check_todo] - Challenge Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

1. assuming only exact string match "#TODO" and not #todo or #Todo
2. ignoring need for whitespace around the "#TODO" string
3. assuming if just #TODO then we still return true
4. assuming just whitspace will run program without raising error
5. "#TODO" can appear anywhere within the text

> Clarifications probably required on 2, 3, 4 but keeping this simple for now

## 2. Design the Method Signature


```ruby
has_todo = check_todo(text)

has_todo: boolean # i.e. true if has "#TODO"
text: string #string of any text including words
```

## 3. Create Examples as Tests

```ruby
# 1
check_todo("")
# => fail "No text provided."

# 2
check_todo("#TODO Take the dog for a walk")
# => true

# 3
check_todo("#Todo Play with the cats")
# => false

# 4
check_todo("#todoismyfavouriteanimal")
# => false

# 5
check_todo("#TODOornottodo")
# => true

# 6
check_todo("get some shopping #TODO")
# => true

# 7
check_todo("pickels #TODO play the drums")
# => true

# 8
check_todo("pick up the #TO DO penguins")
# => false

# 9
check_todo("#TODO")
# => true

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._