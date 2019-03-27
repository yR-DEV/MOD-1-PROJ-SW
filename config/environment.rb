require 'bundler'
Bundler.require

require_all 'lib'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/denver_local_shows.db'
)

ActiveRecord::Base.logger = nil
