# Bottom-Ruby

An implementation of the bottom spec in ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bottom'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```sh
gem install bottom
```

## Useage

Simple Encode

```ruby
require 'bottom'
encoded = Bottom.encode("hello world")
puts encoded
```

Decoding Encoded Bottom

```ruby
require 'bottom'
encoded = Bottom.encode("hello world")
decoded = Bottom.encode(encoded)
puts decoded
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake test` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
