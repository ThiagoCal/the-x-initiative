class BattlePlan < ActiveRecord::Base
  has_many :squads
  has_many :emergencies

  # TODO: Add some validation
  validates :name, presence: true, uniqueness: true

  # TODO: Add some callbacks
end
