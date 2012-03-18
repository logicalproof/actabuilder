class Weapon < ActiveRecord::Base
  validates :name, :range, :special, presence: true
  validates :range, numericality: {greater_than:1}
  validates :range, numericality: {less_than:37}
  validates :name, uniqueness: true
end
