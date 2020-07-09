class Show < ApplicationRecord
    has_many :plans
    belongs_to :artist 
    belongs_to :stage
    has_many :attendees, through: :plans
    has_many :locations, through: :plans

    validates :artist_name, presence: true
    validates :stage_name, presence: true
    validates :date_time, presence: true

    def artist_name=(name)
        self.artist = Artist.find_or_create_by(name: name)
    end
    
    def artist_name
        self.artist ? self.artist.name : nil
    end

    def stage_name=(name)
        self.stage = Stage.find_or_create_by(name: name)
    end
    
    def stage_name
        self.stage ? self.stage.name : nil
    end

end
