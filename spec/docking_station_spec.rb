require 'docking_station'
require 'bike'

describe DockingStation do

  let(:old_street)  { DockingStation.new(:capacity => 10) }
  let(:bike)        { Bike.new }

  it 'can have any capacity' do
    upper_street = DockingStation.new(capacity: 15)
    expect(upper_street.capacity).to eq 15
  end

end








