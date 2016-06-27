source 'https://rubygems.org'

gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'

gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.1.0'
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails'
gem 'kaminari', git: "git://github.com/amatsuda/kaminari.git", branch: 'master'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'slim-rails' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'awesome_print'
  gem 'binding_of_caller'
  gem 'byebug', platform: :mri # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'dotenv-rails' # Autoloads dotenv in Rails.
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'listen', '~> 3.0.5'
  gem 'quiet_assets'
  gem 'rails-erd'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console' # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem "poltergeist"
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
