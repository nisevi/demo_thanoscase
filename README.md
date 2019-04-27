# Demo Thanoscase

Wipes out your strings from the universe

# Installation

In your gemfile:

```ruby
gem 'demo_thanoscase', '~> 0.0.1'
``` 

or in the console:

```ruby
gem install demo_thanoscase
```

# Usage

This gem MonkeyPatches the String class for adding two new methods:

```ruby
class String
  def thanoscase!
    return self if empty?
    half_universe = length/2
    half_universe.times { slice!(rand(length)) }
    self
  end

  def thanoscase
    dup.thanoscase!
  end
end
```

It will randomly eliminate half the characters you have in the string:

```ruby
"Marvel Universe".thanoscase # "arel Uve"
"Marvel Universe".thanoscase # "rvlUners"
"Marvel Universe".thanoscase # "Marel ie"
```

- If the amount of characters is even you will get half of them as return.
  ```ruby
    "1234".thanoscase # "14"
    "1234".thanoscase # "12"
    "1234".thanoscase # "34"
  ```
- If the amount of characters is odd you will get half of them plus one.
  ```ruby
    "123".thanoscase # "23"
    "123".thanoscase # "12"
    "123".thanoscase # "13"
  ```
- If you try to apply this method to an empty string, it will return the same empty string.
  ```ruby
    "".thanoscase # ""
  ```

You can also modify the object it`self` like so:

```ruby
str = "Avengers"
# "Avengers"
str.thanoscase
# "Aves"
str
# "Avengers"
str.thanoscase!
# "vegr"
str
# "vegr"
```
