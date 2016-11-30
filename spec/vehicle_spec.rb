require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#initialize') do
    it('sets the vehicle attributes') do
      test_vehicle = Vehicle.new({:make => "Toyota", :model => "Prius", :year => 2016})
      expect(test_vehicle.make).to(eq("Toyota"))
      expect(test_vehicle.model).to(eq("Prius"))
      expect(test_vehicle.year).to(eq(2016))
      expect(test_vehicle.id).to(eq(1))
      test_vehicle2 = Vehicle.new({:make => "Toyota", :model => "Yaris", :year => 2008})
      expect(test_vehicle2.id).to(eq(2))
    end
  end
  describe(".all_vehicles") do
    it('returns a list of all the vehicles') do
        expect(Vehicle.all_vehicles).to(eq([]))
    end
  end
  describe(".clear") do
    it('clears the lot') do
      test_vehicle = Vehicle.new({:make => "Toyota", :model => "Prius", :year => 2016})
      Vehicle.clear
      expect(Vehicle.all_vehicles).to eq []
    end
  end

  
end
