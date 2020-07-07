class Attendee < ApplicationRecord
    has_many :plans
    has_many :shows, through: :plans
    has_many :locations, through: :plans

    validates :name, presence: { message: "must be given please." }
end
