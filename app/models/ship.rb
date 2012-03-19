class Ship < ActiveRecord::Base
  validates :cost, numericality: {greater_than: 0}
  validates :name, :empire, :cost, presence: true
  validates_uniqueness_of :name, :scope => :empire
  validates :empire, allow_blank: false, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image'}
end
