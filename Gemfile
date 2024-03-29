source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'jbuilder', '~> 2.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'turbolinks', '~> 5'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'webpacker', '~> 5.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'actionview', '>= 6.0.3.3'
gem 'actionpack', '>= 6.0.3.2'
gem 'activesupport', '>= 6.0.3.1'
gem 'activestorage', '>= 6.0.3.1'
gem 'rack', '>= 2.2.3'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Use Devise to authentication
gem 'devise'
# Use Pundit to authorization
gem 'pundit'

# Le Wagon Style
gem "bootstrap", "~> 5.0.0.beta2"
gem 'autoprefixer-rails'
gem 'cloudinary', '~> 1.12.0'
gem 'font-awesome-sass', '~> 5.12.0'
gem 'simple_form'
gem 'turbolinks_render'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :test do
  gem 'capybara', '~> 3.33'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
  gem 'launchy', '~> 2.5'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '4.0.0.beta3'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
