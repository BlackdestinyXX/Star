# 🔭 Star
A library for build discord bots with Ruby. (Under creation)

## Create a bot

For first, create a variable that rapresents the bot:

```ruby
require "star"

bot = star.bot.new("token")
```

## Send, Delete and Get messages:

#### Send a message
```ruby
require "star"

bot = star.bot.new("token")

bot.send("channel id", "message content")
```

#### Get a message
```ruby
require "star"

bot = star.bot.new("token")

bot.getMessage("channel id", "message id")
```

#### Delete a message
```ruby
require "star"

bot = star.bot.new("token")

bot.deleteMessage("channel id", "message id")
```
