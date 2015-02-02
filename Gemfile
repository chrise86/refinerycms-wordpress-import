source "http://rubygems.org"

gem "rails", "4.1.9"
#gem "capybara", ">= 1.0.0.beta1"
gem "sqlite3"
gem "rmagick"

group :development, :test do
  gem "rspec-rails", ">= 2.6.0"
  gem "database_cleaner"
  gem 'guard-rspec'
  gem 'ffi'
  gem 'guard-bundler'
  gem 'libnotify' if  RUBY_PLATFORM =~ /linux/i
  gem 'fakeweb'
end

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

gem 'refinerycms', git: 'https://github.com/refinery/refinerycms', branch: 'master'
gem 'refinerycms-blog', git: 'https://github.com/refinery/refinerycms-blog', branch: 'master'
gem 'refinerycms-wordpress-import', path: './'
