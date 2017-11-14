big_data = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

#1
rm201_capacity = 0
big_data[:data][:rooms].each do |room|
  if room[:room_number] == "201"
    puts rm201_capacity = room[:capacity]
  end
end

#2
rm201_id = nil
big_data[:data][:rooms].each do |room|
  if room[:room_number] == "201"
    rm201_id = room[:id]
  end
end


big_data[:data][:events].each do |ev|
  if ev[:room_id] == rm201_id && ev[:attendees] <= rm201_capacity
    puts "ok"
  end
end
