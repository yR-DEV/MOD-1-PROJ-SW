require_relative '../config/environment'



#puts "HELLO WORLD"
def puts_shows(shows)
  shows.each do |show|
    puts show
  end
end

def get_shows
  puts "fuck"
    sql = "SELECT * FROM shows"
    puts ActiveRecord::Base.connection.execute(sql)
end

puts "Enter shows to see upcoming shows:"
response = gets.chomp
  if response == "shows"
    get_shows()
  end

  # def get_shows
  #     sql = "SELECT * FROM shows"
  #     puts_shows(ActiveRecord::Base.connection.execute(sql))
  # end

  # def puts_shows(shows)
  #   shows.each do |show|
  #     puts show
  #   end
  # end
