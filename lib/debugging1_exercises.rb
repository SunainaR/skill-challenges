# Exercise 1

=begin
# Code with bugs: 

def say_hello(name)
  return "hello #(name)"
end

=end

# Intended output:
#
# > say_hello("kay")
# => "hello kay"

# Debugged code:

def say_hello(name)
  return "hello #{name}"
end

# ---------------------------------

# Exercise 2

=begin
# Code with bugs:

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

=end

# Debugged code

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
   puts ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  puts plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

# Getting visibility - Factorial example

=begin
# Code with bug
def factorial(n)
  product = 1
  while n > 0
    n -= 1
    product *= n
  end
  product
end

Intended Output: 
> factorial(5)
=> 120
=end

# Debugging approach

def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end


# Debugged code

def factorial(n)
  product = 1
  while n > 0
    product *= n
    n -= 1
  end
  product
end