class Plan < ApplicationRecord
    belongs_to :attendee
    belongs_to :location 
    belongs_to :show 

    validates :show_id, uniqueness: { scope: :attendee_id, message: "- You already have another plan to be at this show. Please change your current plan to update it." }

end
