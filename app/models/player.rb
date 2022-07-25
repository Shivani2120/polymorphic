class Player < ApplicationRecord
    # has_paper_trail on: [:update, :destroy], only: [:first_name, :last_name]
    # has_paper_trail

    attr_accessor :content
    has_many :notes, as: :notable

    scope :visible, lambda {where(:email => true)}
    scope :invisible, lambda {where(:email => false)}
    scope :sorted, lambda {order("name ASC")}
    scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
