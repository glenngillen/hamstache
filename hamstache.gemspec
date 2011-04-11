Gem::Specification.new do |s|
  s.version = '0.0.0'
  s.name = "hamstache"
  s.files = ["README.mdown", "Rakefile"]
  s.files += Dir["lib/**/*.rb","test/**/*"]
  s.summary = "Hamstache: It'll put HAML on your Mustache"
  s.description = "Hamstache allows you to use the cleanliness of HAML while still taking advantage of the logic separation of Mustache."
  s.email = "glenn@rubypond.com"
  s.homepage = "http://github.com/rubypond/hamstache"
  s.authors = ["Glenn Gillen"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = [".", "lib"]
  s.has_rdoc = 'false'

  if s.respond_to? :specification_version
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end
