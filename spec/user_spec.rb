require 'user'
require 'bike'
require 'docking_station'

describe 'user' do

  let (:user)   { User.new }
  let (:bike)   { Bike.new }
  let (:bikey)  { User.new(bike) }

  it 'should not have a bike when created' do
    expect(user).not_to have_bike
  end

  it 'can have a bike when created' do
    expect(bikey).to have_bike
  end

  it 'can break a bike' do
    bikey.break_bike
    expect(bike).to be_broken
  end

  it 'can rent a bike from a docking station' do
    old_street = DockingStation.new
    old_street.dock(bike)
    expect(user.has_bike?).to eq true
    user.rent_bike_from(old_street)
    expect(user.has_bike?).to eq true
  end

  it 'can return a bike' do
    # old_street = DockingStation.new
    # user.return_bike_to(old_street)
    # expect(bikey).not_to have_bike
  end

  
end