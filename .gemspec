#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'adhoc'
  gem.homepage           = 'http://adhoc.rubyforge.org/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'Ad-hoc service discovery and routing for DNS-SD (aka Bonjour), XMPP and AMQP.'
  gem.description        = gem.summary
  gem.rubyforge_project  = 'adhoc'

  gem.authors            = ['Arto Bendiken']
  gem.email              = 'arto.bendiken@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README UNLICENSE VERSION bin/adhoc) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w(adhoc)
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.2'
  gem.requirements               = []
  gem.add_development_dependency 'rspec', '>= 1.2.9'
  gem.add_development_dependency 'yard' , '>= 0.5.2'
  gem.add_runtime_dependency     'dnssd',  '>= 1.3.1'
  #gem.add_runtime_dependency    'xmpp4r', '>= 0.5'
  #gem.add_runtime_dependency    'amqp',   '>= 0.6.5'
  gem.post_install_message       = nil
end
