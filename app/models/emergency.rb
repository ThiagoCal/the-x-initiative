class Emergency < ActiveRecord::Base
  belongs_to :battle_plans

  validates :location, presence: true
  # validates :solved, exclusion: { in: [true, false] }
end
