class Artist < ApplicationRecord
    has_many :shows
    has_many :stages, through: :shows
end
