Encoding.default_external = 'utf-8'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path(File.dirname(__FILE__) + "/Gemfile")

require "bundler/setup" if File.exists?(ENV['BUNDLE_GEMFILE'])
Bundler.require :default if defined?(Bundler)

require File.expand_path(File.dirname(__FILE__) + "/app")

run <%= name.camelize %>::App

