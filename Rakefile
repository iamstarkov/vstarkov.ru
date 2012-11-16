require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/testtask'

LANG = "ru_RU.UTF-8"

SET_CMD = case RUBY_PLATFORM 
when /mingw32/ then "set"
else "export"
end

desc 'just generate the site'
task :generate do
  sh "#{SET_CMD} LANG=#{LANG} && jekyll"
end

desc 'serve locally on jekyll'
task :serve do
  sh "#{SET_CMD} LANG=#{LANG} && jekyll --server --auto"
end