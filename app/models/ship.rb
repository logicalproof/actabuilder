class Ship < ActiveRecord::Base
  has_many :assigned_ships
  
  validates :cost, numericality: {greater_than: 0}
  validates :name, :empire_image, :cost, presence: true
  validates_uniqueness_of :name, :scope => :empire_image
  validates :empire_image, allow_blank: false, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  
  EMPIRES = {"Klingon" => "Klingoninsignia.jpg", "Federation" => "Federationinsignia.jpg", "Gorn" => "Gorninsignia.jpg", "Romulan" => "Romulaninsignia.jpg", "Kzinti" => "Kzintiinsignia.jpg", "Tholian" => "Tholianinsignia.jpg", "Orion" => "Orioninsignia.jpg"}.sort
end
