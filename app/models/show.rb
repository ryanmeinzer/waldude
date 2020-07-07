class Show < ApplicationRecord
    has_many :plans
    belongs_to :artist 
    belongs_to :stage
    has_many :attendees, through: :plans
    has_many :locations, through: :plans
end
