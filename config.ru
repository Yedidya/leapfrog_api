
$:.unshift File.expand_path "..", __FILE__

require "lib/env"
require "api/app"
require "active_record"
require "models/user"

use ActiveRecord::ConnectionAdapters::ConnectionManagement

ActiveRecord::Base.establish_connection(
  :adapter => "mysql2",
  :database  => "leapfrog_api_dev"
)

run API::App