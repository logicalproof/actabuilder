require 'test_helper'

class ShipTest < ActiveSupport::TestCase
fixtures :ships
  test "ship fields must not be empty" do
    ship = Ship.new
    assert ship.invalid?
    assert ship.errors[:name].any?
    assert ship.errors[:cost].any?
    assert ship.errors[:empire].any?
  end
  test "ship cost must be positive" do
    ship = Ship.new(name: 'Mulligan Cruiser', cost: 125, image_url: 'sfkzinheavybattlecruiser.jpg', empire: 'sfkzinheavybattlecruiser.jpg')
    ship.cost = -1
    assert ship.invalid?
    assert_equal "must be greater than 0", ship.errors[:cost].join('; ')    
    ship.cost = 100
    assert ship.valid?
  end
  test "ship is not valid without a unique name and empire" do
    ship = Ship.new(name: ships(:cruiser).name, cost: 125, image_url: 'sfkzinheavybattlecruiser.jpg', empire: ships(:cruiser).empire)
    assert !ship.save
    assert_equal "has already been taken", ship.errors[:name].join('; ')
  end
  
  def new_ship(image_url, empire)
    Ship.new(name: 'Mulligan Cruiser', cost: 125, image_url: image_url, empire: empire)
  end
  test "image_url and empire are image files" do
    ok = %w{ defiant.jpg defiant.gif defiant.png DEFIANT.jpG DEFIANT.JPG http://a.b.c/x/y/z/defiant.jpg }
    bad = %w{ defiant.doc defiant.gif/more defiant.jpg.more}
    
    ok.each do |name|
      assert new_ship(name, name).valid?, "#{name} shouldn't be invalid"
    end
    bad.each do |name|
      assert new_ship(name, name).invalid?, "#{name} shouldn't be valid"
    end
  end
end