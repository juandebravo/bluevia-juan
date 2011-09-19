require 'rubygems'
require 'rake'

# Specification var

$spec = Gem::Specification.new do |s| 
  s.name          = "bluevia"
  s.version       = "1.0"
  s.date          = Date.today.to_s

  s.author        = "Bluevia"
  s.email         = "support@bluevia.com"
  s.homepage      = "http://github.com/bluevia"

  s.platform      = Gem::Platform::RUBY
  s.summary       = "This GEM provides an easy way to access Bluevia Public API"
  s.description   = "Ruby SDK for BlueVia allows you to use the BueVia public API \
                     from your Ruby application using just few lines of code."

  s.files         = FileList["{lib}/**/*"].to_a
  s.require_path  = "lib"

  s.test_files    = FileList["{test}/**/test_*.rb"].to_a

  s.has_rdoc      = true
  s.extra_rdoc_files = ["UserGuide", "LICENSE.LGPLv3"]

  # Dependencies
  s.add_dependency("httpclient", ">= 2.1.5.2")
  s.add_dependency("oauth"     , ">= 0.4.1")
  s.add_dependency("json_pure" , ">= 1.4.3")
  s.add_dependency("nokogiri"  , ">= 1.4.2")
  # requires libmagic (sudo apt-get install libmagic | port install p5-file-libmagic)

  s.add_development_dependency('test-unit', '2.1.0')

end

