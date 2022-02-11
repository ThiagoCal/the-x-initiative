class Xman < ActiveRecord::Base
  belongs_to :squad

  # TODO: Copy-paste your code from previous exercise
  validates :name, presence: true, uniqueness: true
  validates :power, presence: true
  validates :gender, presence: true
  # validates :age, numericality: { only_integer: true }
  # validates :xman, presence: true

end
