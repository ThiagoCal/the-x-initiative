class BattlePlan < ActiveRecord::Base
  belongs_to :squad
  belongs_to :emergency

  # TODO: Add some validation
  validates :name, presence: true, uniqueness: true

  # TODO: Add some callbacks
end
