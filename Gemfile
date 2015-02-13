source 'https://ruby.taobao.org/'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
# Use mysql as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

gem 'kaminari'  #用于自动分页的gem插件,详细用法见https://github.com/amatsuda/kaminari
gem 'sinatra'

gem 'actionmailer'

gem 'capistrano-passenger' # 安装部署rails 程序
gem 'capistrano'
gem 'passenger'

gem 'bootstrap-sass'  # 前端页面框架
gem 'simple_form'

gem 'devise', '3.4.1'

gem 'haml'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# window下rails4.1 发生TZInfo::DataSourceNotFound 错误，原因是因为64位操作系统，打开创建的rails应用下的gemfile文件，找到gem 'tzinfo-data', platforms: [:mingw, :mswin]
# 改为gem 'tzinfo-data', platforms: [:mingw, :mswin , :x64_mingw]，就可以了。

group :production do
  # gems specifically for Heroku go here
  # PostgreSQL gem
  gem 'pg'
end