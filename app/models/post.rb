class Post < ApplicationRecord
  
  def self.to_csv
    attributes = %w{ id title }

    CSV.generate(headers: true ) do |csv|
        csv << attributes

        all.each do |post|
            csv << attributes.map {|attr| post.send(attr)}
        end
    end
  end
  
  has_one_attached :post_file

end
