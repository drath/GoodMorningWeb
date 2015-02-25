source 'https://rubygems.org'

gem 'rails', '4.1.4'
gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'
gem 'mysql2'
#gem 'paperclip', :git => 'git://github.com/thoughtbot/paperclip.git'
gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'multi_json'
gem 'simple_form'
gem 'best_in_place'
#gem 'sqlite3'
gem 'sass-rails'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
#gem 'whenever', :require => false
gem 'figaro'
gem 'font-awesome-rails'
gem 'haml'
gem 'activeadmin', github: 'activeadmin'
gem 'devise'
gem 'redcarpet', '~> 3.0.0'
gem 'pygments.rb'

group :development do
	gem 'spring'
	gem 'capistrano-rails',   '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  gem "capistrano-rbenv"
  gem 'hirb'
  gem 'sqlite3'
  gem 'haml-rails'
end

group :assets do
  gem 'coffee-rails'
  gem 'uglifier'
end

group :test do
  gem 'capybara', '2.1.0'
  gem 'faker', '~> 1.1.2'
  gem 'database_cleaner', '~> 1.0.1'
  gem 'launchy', '~> 2.3.0'
end

# rspec-rails and factory_girl_rails include some generators too 
# and therefore need to be part of development and test. The other
# gems (capybara, faker, launchy) are needed only when running a test
# and therefore are part of the test group only.

group	:development, :test do
  gem 'factory_girl_rails', '4.1.0'
	gem 'rspec-rails', '2.11.0' 
	gem 'annotate', '2.5.0'
  gem 'selenium-webdriver', "~> 2.35.1"
end

# Use debugger
# gem 'debugger', group: [:development, :test]

