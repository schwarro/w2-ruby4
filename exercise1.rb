trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# 1 save direction of train 111 in variable
train_111 = trains.last[:direction]

#2 save frequency of train 80B in varioable
train_80b = trains[5][:frequency_in_minutes]

#3. save frequency of train 610 in variable
train_610 = trains[2][:direction]

#4/5 Iterate and add trains if travel north/east

def trains_direction(trains, direction)
  trains_list = []
  trains.each do |train|
    if train[:direction] == direction
      trains_list.push(train[:train])
    end
  end
  return trains_list
end

puts "North Trains: #{trains_direction(trains, "north")}"
puts "East Trains: #{trains_direction(trains, "east")}"

#7 add first_departure_time to first trains
trains[0][:first_departure_time] = 6
puts trains
