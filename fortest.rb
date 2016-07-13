require_relative 'module'
require_relative 'train'
require_relative 'route'
require_relative 'railway_station'
require_relative 'cargo_train'
require_relative 'passanger_train'
require_relative 'car'
require_relative 'cargo_car'
require_relative 'passanger_car'

route = Route.new('First Station','Last Station')
rail = RailwayStation.new('1 Station')
rail1 = RailwayStation.new('2 Station')
rail2 = RailwayStation.new('3 Station')


train2 = PassangerTrain.new('242-FF')
car2 = PassangerCar.new(10)
rail1.get_train(train2)

car2.take_place
car2.take_place
car2.count_of_take_places
car2.count_of_free_places


train1 = CargoTrain.new('118-gF')
car1 = CargoCar.new(100)
rail.get_train(train1)
train1.add_car(222)


car1.take_volume(11)
car1.count_of_take_volumes
car1.count_of_free_volumes

rail.each_train {|train| puts train}
train2.each_car{|car| puts car}

(RailwayStation.all).each do |station|
  station.station_with_train
  station.each_train do |train|
    train.each_car do |car|
      puts car.type
      if car.type == :cargo
        car.cars
      elsif car.type == :passanger
        car.cars
      else
        puts 'Error'
      end 
    end
  end
end