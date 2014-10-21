require 'bike'

describe Bike do

  let(:bike)        { Bike.new }
  let(:broken_bike) { Bike.new.break! }
  
  it 'cant be broken when initialized' do
    expect(bike.broken?).to be false
  end

  it 'can be broken' do
    expect(bike.break!).to be_broken
  end

  it 'can be fixed' do
    broken_bike.fix!
    expect(broken_bike.broken?).to be false
  end

end