# Generator Setups

rails g resource Artist name:string

rails g resource Show artist_id:integer stage_id:integer time:integer

rails g resource Stage name:string

rails g resource Attendee name:string

rails g resource Plan attendee_id:integer show_id:integer location_id:integer

rails g resource Location color:string

# AR Relationships

# Artist
has_many :shows
has_many :stages, through: :shows

# Show
belongs_to :artist 
belongs_to :stage

# Stage
has_many :shows
has_many :artists, through: :shows

# Attendee
has_many :plans
has_many :shows, through: :plans
has_many :locations, through: :plans

# Plan
belongs_to :attendee
belongs_to :location 
belongs_to :show 

# Location
has_many :plans
has_many :shows, through: :plans
has_many :attendees, through: :plans