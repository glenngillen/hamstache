require 'haml'
require 'mustache'
base_dir = File.join(File.dirname(__FILE__), "hamstache")
Dir["#{base_dir}/*.rb"].each do |file|
  require file
end
