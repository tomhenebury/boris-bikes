require './lib/bike.rb' 

describe Bike do
  it 'responds to working method' do
    expect(subject).to respond_to(:working?)
  end

end
