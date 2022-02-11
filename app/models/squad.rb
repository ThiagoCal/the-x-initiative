class Squad < ActiveRecord::Base
  has_many :xmen
  has_many :battle_plans

  # TODO: Add some validation
  validates :name, presence: true, uniqueness: true

  # TODO: Add some callbacks
end
