source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails',		       '~> 5.2.2'
gem 'bcrypt',        	       '3.1.12'
gem 'faker',                   '1.7.3'
gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '>= 4.9.4'
gem 'will_paginate',           '3.1.7'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass',          '>= 3.4.1'
gem 'jquery-rails',            '4.3.1'
gem 'rails-i18n',              '~> 5.1'
gem 'ransack' 
gem 'mysql2',                  '>= 0.4.4', '< 0.6.0'
gem 'puma',                    '~> 3.11'
gem 'sass-rails',	       '~> 5.0'
gem 'uglifier',		       '>= 1.3.0'
gem 'coffee-rails',	       '~> 4.2'
gem 'turbolinks',	       '~> 5'
gem 'jbuilder',		       '~> 2.5'
gem 'bootsnap',		       '>= 1.1.0', require: false

group :production do
  gem 'fog', '1.42'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',           '>= 3.3.0'
  gem 'listen',     	       '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing', '1.0.3'
  gem 'capybara',                 '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
