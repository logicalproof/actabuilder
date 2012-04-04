class WeaponCard < ActiveRecord::Base
  belongs_to :ship
  has_many :weapons
end
