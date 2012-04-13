class Ship < ActiveRecord::Base
  has_many :assigned_ships
  has_many :weapon_cards, :dependent => :destroy
  validates :cost, numericality: {greater_than: 0}
  validates :name, :empire_image, :cost, presence: true
  validates_uniqueness_of :name, :scope => :empire_image
  validates :empire_image, allow_blank: false, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  
  EMPIRES = {"Federation" => "Federationinsignia.png", "Gorn" => "Gorninsignia.png", "Klingon" => "Klingoninsignia.png", "Kzinti" => "Kzintiinsignia.png", "Orion" => "Orioninsignia.png", "Romulan" => "Romulaninsignia.png", "Tholian" => "Tholianinsignia.png"}
  CRAFT = ["1 Shuttle", "2 Shuttles", "3 Shuttles", "4 Shuttles", "5 Shuttles", "6 Shuttles", "7 Shuttles", "8 Shuttles"]
  TRAIT_NUMBERS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  Weapon_names = {}
  Weapon.all.each do |name|
    Weapon_names[name.name] = name.id
  end
end
