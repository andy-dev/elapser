# Elapser

Gem that provides time between now and when something was created using the column created_at that is added when using timestamps macro in an Active Record migration

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'elapser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elapser

## Usage

Add elapser your gemfile
```ruby
gem 'elapser', '~> 1.0.0'
```
Require elapser 

```ruby
require 'elapser'
```

3. Use it!!!
   
```ruby
   Elapser.time_calc("2015-02-13 00:36:46 UTC")
   #=> 9 weeks ago # Consider this was posted 2015-04-13
```
 Note: If you are using created_at from active record, make sure you call to_s, for example: 

```ruby
    Elapser.time_calc(todo.created_at.to_s)
   # todo is just the name of my model it could be anything
```
 Example using ERB
```ruby 
  <% @note.reverse.each do |note| %>
      <div class = "notebox">
      <li> Created by: <%= note.user.user_name if note.user != nil %></li>
      <li> <%= note.description %></li>
      <li>Posted <%= Elapser.time_calc(note.created_at.to_s)%></li>
      <%end%>
```
```ruby 
DISPLAY ON THE BROWSER
Created by: andres
hello again
Posted 8 weeks ago
```
      
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgements

I created this gem as an educational exercise to learn the process and inner workings for creating a gem. I also believe it could be useful to other fellow rubyst. I want to thank instructor Sherif Abushadi and peer Richard Santin who contributed and without them this project would have not existed.
