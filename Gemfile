source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.0"
# Use sqlite3 as the database for Active Record
gem "sqlite3"
# Use Puma as the app server
gem "puma", "~> 3.0"

#################################################
# Assets
#################################################

gem "bourbon"                         # A lightweight SASS toolset
gem "sass-rails", "~> 5.0"            # Use SCSS for stylesheets
gem "uglifier", ">= 1.3.0"            # Use Uglifier as compressor for JavaScript assets
gem "coffee-rails", "~> 4.2"          # Use CoffeeScript for .coffee assets and views
gem "jquery-rails"                    # Use jquery as the JavaScript library
gem "font-awesome-sass", "~> 4.7.0"   # Font-Awesome Sass gem for use in Ruby/Rails projects
gem "mailgun-ruby", "~> 1.1.4"        # Mailgun's Official Ruby Library

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  # Deployment
  gem "capistrano"          # Remote multi-server automation tool
  gem "capistrano-rails"    # Rails integration for Capistrano 3.x
  gem "capistrano-rbenv"    # Rbenv integration for Capistrano 3.x
  gem "capistrano-nginx"    # Nginx tasks for Capistrano
  gem "capistrano3-puma"    # Puma taks for Capistrano
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
