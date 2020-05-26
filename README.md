# Glassdoor::Api

This is an unofficial gem to utilize Glassdoor's API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'glassdoor-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install glassdoor-api

## Setup

1. Require the gem with
```ruby
require 'glassdoor'
```
2. Visit the [Glassdoor API page](https://www.glassdoor.com/developer/register_input.htm) and register for an API key.
3. You will receive an email with your partner id and partner key
4. Setup configuration with:
```ruby
config = Glassdoor.configuration
config.partner_id = "your-partner-id"
config.partner_key = "your-partner-key"
```

## Searching for a Company

1. Search using title
```ruby
Glassdoor::Clients::Company.find_by_title("apple")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/glassdoor-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
