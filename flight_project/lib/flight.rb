class Flight
    attr_reader :passengers
 def initialize(flight_num_string, capacity)
    @capacity = capacity
    @flight_number = flight_num_string
    @passengers = []
 end

 def full?
    @passengers.length == @capacity
 end

 def board_passenger(passenger)
    if !self.full?
        @passengers << passenger if passenger.has_flight?(@flight_number)
    end
 end

 def list_passengers
    pass_names = []
    @passengers.each do |passenger|
        pass_names << passenger.name
    end
    pass_names
 end

 def [](index)
    @passengers[index]
 end

 def <<(passenger)
    self.board_passenger(passenger)
 end

end