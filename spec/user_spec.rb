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

end