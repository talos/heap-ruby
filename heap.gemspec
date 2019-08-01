# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: heap 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "heap"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Victor Costan"]
  s.date = "2016-04-07"
  s.description = "Implements Heap's server-side API"
  s.email = "victor@heapanalytics.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "Gemfile",
    "Gemfile187",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "heap.gemspec",
    "lib/heap.rb",
    "lib/heap/client.rb",
    "lib/heap/errors.rb",
    "lib/heap/validations.rb",
    "lib/heap/middleware.rb",
    "lib/heap/instrument_active_record.rb",
    "test/client_add_user_properties_test.rb",
    "test/client_test.rb",
    "test/client_track_test.rb",
    "test/client_session_track_test.rb",
    "test/heap_test.rb",
    "test/helper.rb"
  ]
  s.homepage = "http://github.com/heap/heap-ruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Heap server-side API client"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0.8.11"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.8.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0"])
      s.add_development_dependency(%q<coveralls>, [">= 0.8.10"])
      s.add_development_dependency(%q<jeweler>, [">= 2.0.1"])
      s.add_development_dependency(%q<minitest>, [">= 5.8.4"])
      s.add_development_dependency(%q<rdoc>, [">= 3.12"])
      s.add_development_dependency(%q<simplecov>, [">= 0.11.2"])
      s.add_development_dependency(%q<yard>, [">= 0.8.7.6"])
    else
      s.add_dependency(%q<faraday>, [">= 0.8.11"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.8.0"])
      s.add_dependency(%q<bundler>, [">= 1.0"])
      s.add_dependency(%q<coveralls>, [">= 0.8.10"])
      s.add_dependency(%q<jeweler>, [">= 2.0.1"])
      s.add_dependency(%q<minitest>, [">= 5.8.4"])
      s.add_dependency(%q<rdoc>, [">= 3.12"])
      s.add_dependency(%q<simplecov>, [">= 0.11.2"])
      s.add_dependency(%q<yard>, [">= 0.8.7.6"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0.8.11"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.8.0"])
    s.add_dependency(%q<bundler>, [">= 1.0"])
    s.add_dependency(%q<coveralls>, [">= 0.8.10"])
    s.add_dependency(%q<jeweler>, [">= 2.0.1"])
    s.add_dependency(%q<minitest>, [">= 5.8.4"])
    s.add_dependency(%q<rdoc>, [">= 3.12"])
    s.add_dependency(%q<simplecov>, [">= 0.11.2"])
    s.add_dependency(%q<yard>, [">= 0.8.7.6"])
  end
end

