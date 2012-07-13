class WeaponCard < ActiveRecord::Base
  belongs_to :ship
  has_many :weapons
end
# == Schema Information
#
# Table name: weapon_cards
#
#  id          :integer         not null, primary key
#  ship_id     :integer
#  weapon_id   :integer
#  attack_dice :integer
#  arc         :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

