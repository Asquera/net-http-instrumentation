# Net::Http::Instrumentation

Adds additional instrumentation for Net::HTTP. Currently adds detailed information about times spent in HTTP Requests in NewRelic transaction traces.

## Installation

Add this line to your application's Gemfile:

    gem 'net-http-instrumentation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install net-http-instrumentation

## Usage

Just require the instrumentation file after requiring net/http and newelic_prm. See the sample for details.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
