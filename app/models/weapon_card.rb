class WeaponCard < ActiveRecord::Base
  belongs_to :ship
  belongs_to :weapon
end
