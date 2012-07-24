require "net-http-instrumentation/version"
require 'new_relic/agent/method_tracer'
require 'net/http' # we need to enforce that net/http is loaded before we rig the instrumentation


Net::HTTP.class_eval do
  include NewRelic::Agent::MethodTracer
  add_method_tracer :connect, 'Custom/Net/Http/connect', :metric => false
end

Net::HTTPGenericRequest.class_eval do
  include NewRelic::Agent::MethodTracer 
  add_method_tracer :exec, 'Custom/Net/Http/HTTPGenericRequest/exec', :metric => false
end
 
Net::HTTPResponse.class_eval do
  include NewRelic::Agent::MethodTracer 
  add_method_tracer :read_body, 'Custom/Net/Http/HTTPResponse/read_body', :metric => false
  class << self
    include NewRelic::Agent::MethodTracer
    add_method_tracer :read_new, 'Custom/Net/Http/HTTPResponse/read_new', :metric => false 
  end
end
