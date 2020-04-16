require 'pry'
def nyc_pigeon_organizer(data)
  
  pigeon_list = Hash.new
  data.each do |key, value|
    value.each_with_index do |(key, value), index|
      counter = 0
      while counter < value.length do
        pigeon_list[value[counter]] = index
        counter += 1
      end
      pigeon_list.reject! {|x| x.nil?}
    end
  end
  
  attributes = Array.new
  data.map do |key, value|
    attributes << key
  end
  
  pigeon_list.each_with_index do |(key, value), index|
    pigeon_list[key] = Hash[attributes.collect { |item| [item, []] } ]
  end
  
  pigeon_list.map do |key, value|
    name = key
    value.map do |key, value|
      attribute_array = value
      data[key].map do |key, value|
        if value.include? name
          attribute_array << key.to_s
        end
      end
    end
  end
  p pigeon_list
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)