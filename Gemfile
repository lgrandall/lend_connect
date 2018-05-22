source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.6'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do

  gem 'byebug', platform: :mri
  gem 'capybara', '~> 2.18'
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'factory_girl_rails', '~> 4.9'
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
end

group :development do

  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0'
gem 'devise', '~> 4.4', '>= 4.4.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'rails_12factor', group: :production
gem 'rubocop', '~> 0.56.0', require: false

