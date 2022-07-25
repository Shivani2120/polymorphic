class Note < ApplicationRecord
  attr_accessor :content
  belongs_to :notable, polymorphic: true
end
