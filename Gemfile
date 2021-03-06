source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# クロスドメイン対策のGem
gem 'rack-cors'

# トークンベースの認証を行うためのGem
gem 'sorcery'

# N+1問題を検出するGem
gem 'bullet'

# ヘルスチェック用のインターフェース
gem 'rack-health'

# スキーマ管理用
gem 'ridgepole'

# アプリケーションサーバー
# gem 'unicorn'
# gem 'unicorn-worker-killer'

# .envによる環境変数の設定
gem 'dotenv-rails', '~>2.4.0'

# フロントとAPIを同時に起動するためのGem
gem 'foreman'

# Excelファイルを扱うためのGem
## ダウンロードファイル配布用
gem 'rubyXL'
## アップロードファイル読み込み用
gem 'roo'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Lint tool
  gem 'rubocop'
  # Rspecによるテスト
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-json_matcher'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers', require: false
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
