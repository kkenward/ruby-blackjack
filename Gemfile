source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=bootcamp_blackjack

gem 'rails', '4.0.0'

group :development, :test do
 gem 'rspec-rails', '2.13.1'
end 

group :test do
 gem 'cucumber-rails', :require => false, git: 'https://github.com/cucumber/cucumber-rails.git'
 gem 'database_cleaner'
 gem 'capybara', '2.1.0'
 gem "capybara-webkit", "~> 1.0.0"
# gem 'selenium-webdriver', '2.35.1'
end
 
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 2.1.1'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '~> 1.2'
gem 'haml'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

gem 'pg', '0.15.1'

group :production do
  gem 'rails_12factor'
end 
