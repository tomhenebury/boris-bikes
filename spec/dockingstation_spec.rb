require './lib/docking_station.rb'

describe DockingStation do
  it 'can release a bike' do
    expect(subject).to respond_to(:release_bike)
  end
end
