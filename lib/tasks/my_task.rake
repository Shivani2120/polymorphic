namespace :my_task do
    desc "Practice"
    task first: :environment do
        puts "This is only for practice perpose"
    end
end