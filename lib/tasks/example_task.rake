namespace :example_task do
    desc 'Greeting message task'

    task greet_the_user: :environment do
        puts 'Hello user welcome to the rake task world!'
    end

    task say_by_to_user: :environment do 
        puts 'Hello user! it is the time signoff now. Please try this rake task at your end'
    end
end


# rails db:migrate

# rails example_task:greet_the_user   ## this way you run your file 
# rails example_task:say_by_to_user