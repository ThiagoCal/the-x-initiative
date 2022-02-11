class Emergency < ActiveRecord::Base
  has_many :battle_plans

  validates :location, presence: true
  # validates :solved, exclusion: { in: [true, false] }
end
