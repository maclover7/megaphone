# Megaphone

Announce all test failures at the end of your Minitest run.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'megaphone'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install megaphone

## Usage

Either require it in your `test_helper.rb`:

```ruby
require 'megaphone'
require 'minitest/megaphone'
```

Or run with just `TESTOPTS="--meg"` or `TESTOPTS="--megaphone"`

After running all of your tests, just search for 'MEGAPHONE WAS HERE',
and you'll have all of your failures available for easy reading!
Megaphone will list the total number of failing tests, as well as the
names of the failing tests! Isn't that awesome?

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maclover7/megaphone.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
