# encoding: utf-8

require 'thor'
require 'thor/group'
require 'thor/util'
require 'thor/util'
require 'active_support/inflector'

require "sinatra-appgen/version"

module SinatraAppgen
  class CLI < Thor::Group
    
    include Thor::Actions
    
    argument :name
    argument :path
    
    TEMPLATES_FILE = %w[
      .gitignore
      Gemfile
      app.rb
      config.ru
      views/assets/coffee/application.coffee
      views/assets/scss/application.scss
      views/index.haml
      views/layout.haml
    ]
    
    TEMPLATES_DIR = %w[
      public/css
      public/images
    ]

    def self.source_root
      File.dirname(__FILE__)
    end
    
    def self.banner
      "sinatra-appgen [appname] [path]"
    end
    
    def setup_ini
      @path = File.expand_path(path)
      @path = @path + "/" unless @path =~ /\/$/
    end
    
    def createfile
      TEMPLATES_FILE.each do |file|
        template("templates/" + file, "#{@path + name}/#{file}")
      end
    end
    
    def createdir
      TEMPLATES_DIR.each do |d|
        directory("templates/" + d, "#{@path + name}/#{d}")
      end
    end
    
    def complete
      say "Sinatra app files created."
    end
  end
end

