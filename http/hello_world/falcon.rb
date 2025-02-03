#!/usr/bin/env falcon-host

require "falcon/environment/self_signed_tls"
require "falcon/environment/rack"
require "falcon/environment/supervisor"

service "hello.localhost" do

  include Falcon::Environment::SelfSignedTLS
  include Falcon::Environment::Rack

end

service "supervisor" do
  include Falcon::Environment::Supervisor
end

