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

end