require './lib/docking_station.rb'

describe DockingStation do
  it 'can release a bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gets a bike and bike is working' do
    docking_station = DockingStation.new(1)
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(docking_station).to respond_to(:dock_bike)
  end

  it 'show bikes' do
    docking_station = DockingStation.new(1)
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bikes).to eq([bike])
  end

  it 'says there are no bikes' do
    docking_station = DockingStation.new(0)

    expect { docking_station.release_bike }.to raise_error("There are no bikes available get on the bus!")
  end
end
