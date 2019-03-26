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
    Artists.create_table
    Venue.create_table
    Show.create_table
  end 
end
