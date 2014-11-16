$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "robots_dot_text/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "robots_dot_text"
  s.version     = RobotsDotText::VERSION
  s.authors     = ["Jessie Keck"]
  s.email       = ["jessie.keck@gmail.com"]
  s.homepage    = "http://github.com/sul-dlss/robots_dot_text"
  s.summary     = "A rails engine to provide environment specific robots.txt files"
  s.description = "A rails engine to provide environment specific robots.txt files"
  s.license     = "Apache2"

  s.files = Dir["{app,config,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.7"

  s.add_development_dependency "sqlite3"
end
