require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the rails_xss plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the rails_xss plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RailsXss'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.homepage = "http://github.com/NZKoz/rails_xss/"
    gemspec.name = "rails-xss"
    gemspec.description = "RailsXss"
    gemspec.summary = "Replaces the default ERB template handlers with erubis, and switches the behaviour to escape by default"
    gemspec.version = '1.0.0'
    gemspec.email = "michael@koziarski.com"
    gemspec.authors = ['Michael Koziarski']
    gemspec.add_dependency 'erubis', '>= 2.6.5' 
  end

rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end