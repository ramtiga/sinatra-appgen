# Sinatra Application Generator

* A simple generator for Sinatra.
* Use coffeescript and scss.

## Install

    $ gem install sinatra-appgen


## Usage

    $ git clone git://github.com/ramtiga/sinatra-appgen.git
    $ cd sinatra-appgen

    $ bin/sinatra-appgen -h
    Usage:
      sinatra-appgen [appname] [path]
    
    $ bin/sinatra-appgen sample .

      create  sample/.gitignore
      create  sample/Gemfile
      create  sample/app.rb
      create  sample/config.ru
      create  sample/views/assets/coffee/application.coffee
      create  sample/views/assets/scss/application.scss
      create  sample/views/index.haml
      create  sample/views/layout.haml
      create  sample/public/css
      create  sample/public/images
    Sinatra app files created.

    $ cd sample
    $ bundle install
    

## Copyright

Copyright (c) 2012 ramtiga, released under the MIT license.)

