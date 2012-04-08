require "httparty"
require "hashie"
Dir[File.dirname(__FILE__) + '/ted/*.rb'].each do |file|
  require file
end