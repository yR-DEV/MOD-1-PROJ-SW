require_relative '../config/environment'



#puts "HELLO WORLD"
def puts_shows(shows)
  shows.each do |show|
    puts show
  end
end

def get_shows
  puts Artist.get_artists

end

puts "Enter artists to see upcoming shows they are in:"
response = gets.chomp
  if response == "artists"
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
