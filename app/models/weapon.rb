class Weapon < ActiveRecord::Base
  validates :name, :range, :special, presence: true
  validates :range, numericality: {greater_than:1}
  validates :range, numericality: {less_than:37}
  validates :name, uniqueness: true
  belongs_to :weapon_cards
  WEAPON = Hash.new
  w = Weapon.find(:all)
  w.each do |weap|
    WEAPON[weap.name] = weap
  end
end
# == Schema Information
#
# Table name: weapons
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  range      :integer
#  special    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

