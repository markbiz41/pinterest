task :app_stats => :environment do
  puts "Pin: #{Pin.count}"
  puts "Board: #{Board.count}"
  puts "User: #{User.count}"
end
