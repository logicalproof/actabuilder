require 'test_helper'

class WeaponTest < ActiveSupport::TestCase
  fixtures :weapons
  test "weapon fields must not be empty" do
    weapon = Weapon.new
    assert weapon.invalid?
    assert weapon.errors[:name].any?
    assert weapon.errors[:range].any?
    assert weapon.errors[:special].any?
  end
  test "weapon range must be positive, between 2 and 36" do
    weapon = Weapon.new(name: 'Mulligan Cannon', range: 8, special: 'Devastating +2')
    weapon.range = -1
    assert weapon.invalid?
    assert_equal "must be greater than 1", weapon.errors[:range].join('; ')
    
    weapon.range = 37
    assert weapon.invalid?
    assert_equal "must be less than 37", weapon.errors[:range].join('; ')
    
    weapon.range = 18
    assert weapon.valid?
  end
  test "weapon is not valid without a unique title" do
    weapon = Weapon.new(name: weapons(:phaser).name, range: 8, special: 'Kill Zone 12')
    assert !weapon.save
    assert_equal "has already been taken", weapon.errors[:name].join('; ')
  end
end
