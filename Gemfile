source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

gem 'pg' #postgres
gem 'oj' #better json parser
gem 'string-scrub' #If the given string contains an invalid byte sequence then that invalid byte sequence is replaced with the unicode replacement character (�) and a new string is returned
gem 'rest-client', '~> 1.6.7' #rest-ful ruby client
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'carrierwave' #simple and extremely flexible way to upload files from Ruby applications
gem 'fog' #cloud services library
gem 'mini_magick' #wrapper of image magick
gem 'hashie' #a simple collection of useful Hash extensions
gem 'premailer' #Preflight for HTML email http://premailer.dialect.ca/
gem 'roadie','3.0.0.pre1' #converts css defined in header and external file into inline css
gem 'devise', '~> 3.3.0' #Flexible user authentication solution for Rails with Warden
gem 'pundit', '~> 0.3.0' #Object oriented authorization for Rails applications
gem 'htmlcompressor', '~> 0.1.1' #minifies html source code
gem 'yui-compressor', '~> 0.12.0' #JavaScript minifier designed to be 100% safe and yield a higher compression ratio than most other tools

group :doc do 
  gem 'sdoc', require: false # bundle exec rake doc:rails generates the API under doc/api.
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do

  gem 'sass-rails', '~> 4.0.3' # Use SCSS for stylesheets
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'

end

group :production do
  gem 'rails_12factor' #Run Rails the 12factor way, needed for heroku
  #gem 'sprockets_better_errors', '~> 0.0.5' #make it painfully obvious when you've done something wrong with the rails asset pipeline. 
end

group :development, :test, :cucumber do
  gem 'random_data' #allows to easily create random date, like Random.email or Random.last
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-debugger'
  gem 'capistrano', '2.15.5'
end

