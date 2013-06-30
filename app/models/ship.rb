class Ship < ActiveRecord::Base
  has_many :assigned_ships, dependent: :destroy
  has_many :weapon_cards, :dependent => :destroy
  validates :cost, numericality: {greater_than: 0}
  validates :shield, numericality: {greater_than: 0}
  validates :cripple_value, numericality: {greater_than: 0}
  validates :damage, numericality: {greater_than: 0}
  validates :name, :empire_image, :cost, presence: true
  validates_uniqueness_of :name, :scope => :empire_image
  validates :empire_image, allow_blank: false, format: { with: %r{\.(gif|jpg|png|jpeg)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png|jpeg)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  
  EMPIRES = {"Federation" => "Federationinsignia.png", "Gorn" => "Gorninsignia.png", "Klingon" => "Klingoninsignia.png", "Kzinti" => "Kzintiinsignia.png", "Orion" => "Orioninsignia.png", "Romulan" => "Romulaninsignia.png", "Tholian" => "Tholianinsignia.png"}
  CRAFT = ["1 Shuttle", "2 Shuttles", "3 Shuttles", "4 Shuttles", "5 Shuttles", "6 Shuttles", "7 Shuttles", "8 Shuttles"]
  TRAIT_NUMBERS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  Weapon_names = {}
  Weapon.all.each do |name|
    Weapon_names[name.name] = name.id
  end
  
end
# == Schema Information
#
# Table name: ships
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  cost            :integer
#  image_url       :string(255)
#  empire_image    :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  turn            :integer
#  marines         :integer
#  craft           :string(255)
#  damage          :integer
#  cripple_value   :integer
#  shield          :integer
#  agile           :boolean         default(FALSE)
#  anti_drone      :integer         default(0)
#  armoured        :boolean         default(FALSE)
#  cloak           :boolean         default(FALSE)
#  command         :integer         default(0)
#  enhanced_bridge :boolean         default(FALSE)
#  fast            :boolean         default(FALSE)
#  immobile        :boolean         default(FALSE)
#  labs            :integer         default(0)
#  lumbering       :boolean         default(FALSE)
#  no_probes       :boolean         default(FALSE)
#  quick_launch    :boolean         default(FALSE)
#  scout           :boolean         default(FALSE)
#  slow            :boolean         default(FALSE)
#  stealth         :integer         default(0)
#  tractor_beam    :integer         default(0)
#  transporter     :integer         default(0)
#

