namespace :active_record_counter do
  desc "TODO"
  task players_count: :environment do
    puts "Players count = #{Player.count}"
  end

end
