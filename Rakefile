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
  desc 'migrate changs to db'
  task :migrate => :environment do
    Artist.create_table
    Venue.create_table
    Show.create_table
  end

  desc 'seeding the database with dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
