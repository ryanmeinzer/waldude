class Location < ApplicationRecord
    has_many :plans
    has_many :shows, through: :plans
    has_many :attendees, through: :plans
end
