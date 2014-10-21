require 'docking_station'
require 'bike'

describe DockingStation do

  let(:old_street)  { DockingStation.new }
  let(:bike)        { Bike.new }

  it 'is created without any bikes' do
    expect(old_street.bikes.count).to eq 0
  end  

  it 'can dock a bike' do
    old_street.dock(bike)
    expect(old_street.bikes).to eq [bike]
  end

  it 'knows when there is a bike docked' do
    old_street.dock(bike)
    expect(old_street.empty?).to be false
  end

  it 'knows when it is empty' do
    expect(old_street).to be_empty
  end

  it 'knows how many bikes it has' do
    expect(old_street.bike_count). to eq (0)
    old_street.dock(bike)
    expect(old_street.bike_count). to eq (1)
  end

  it 'can release a bike' do
    old_street.dock(bike)
    expect(old_street.bike_count). to eq (1)
    old_street.release(bike)
    expect(old_street.bike_count). to eq (0)
  end

  it 'should have a capacity of 10' do
    expect(old_street.capacity).to eq 10
  end

  it 'knows when it is full' do
    10.times { old_street.dock(Bike.new) }
    expect(old_street).to be_full
  end

  it 'knows when it is not full' do
    9.times { old_street.dock(Bike.new) }
    expect(old_street).not_to be_full
  end

  it 'can have any capacity' do
    upper_street = DockingStation.new(capacity: 15)
    expect(upper_street.capacity).to eq 15
  end

  it 'knows if it has available bikes' do
    scott = Bike.new
    scott.break!
    old_street.dock(bike)
    old_street.dock(scott)
    expect(old_street.bike_count).to eq (2)
    expect(old_street.available_bikes). to eq [bike]
  end

end








