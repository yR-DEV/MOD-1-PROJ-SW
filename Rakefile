require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

task :environment do
  require_relative './config/environment'
end

namespace :db do
  desc 'seeding the database with dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
