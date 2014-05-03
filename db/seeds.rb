require 'csv'

def seed_hotsprings
  CSV.foreach("db/hot_springs_list.csv") do |row|
    data = {}
    data[:state_code] = row.shift
    data[:state] = row.shift
    data[:latitude] = row.shift
    data[:longitude] = row.shift
    data[:location_url] = generate_location_url(data[:latitude],data[:longitude])
    data[:name] = row.shift
    data[:temperature] = row.shift
    data[:comfort_level] = row.shift

    puts "Building hotsprings '#{data[:name]}'..."
    Hotspring.create(data)
  end
end

# Generate google maps embed url based on location
def generate_location_url(latitude,longitude)
	location_string = latitude+","+longitude
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyBSK5Z9EypS20-T9HECcccyplpGUNa0KHE&q=" + location_string
end

# Let's do it!
seed_hotsprings