require 'sinatra'
require 'net/http'
require 'newrelic_rpm'
require 'cgi'
require 'new_relic/rack/developer_mode'
require 'net/http/instrumentation/newrelic_rpm'

use NewRelic::Rack::DeveloperMode

get '/test' do
  res = Net::HTTP.get('www.google.com', '/')
  res
end
