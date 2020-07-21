require "pry"

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

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value| #=> iterate over the keys
  
    value.each do |inner_key, inner_value| #=> iterate over the inner keys
    
      inner_value.each do |pigeon_name| #=> iterate over the name array

        if !pigeon_list[pigeon_name]
          pigeon_list[pigeon_name] = {}
        end
        if !pigeon_list[pigeon_name][key]
          pigeon_list[pigeon_name][key] = []
        end
        pigeon_list[pigeon_name][key].push(inner_key.to_s)
      end
    end
  end
  pigeon_list
end

def la_pigeon_organizer(data)
  
  final_pigeon_list = data.each_with_object({}) do |(key, value), pigeon_list| #=> iterate over the keys
    value.each do |inner_key, inner_value| #=> iterate over the inner keys
    
      inner_value.each do |pigeon_name| #=> iterate over the name array

        if !pigeon_list[pigeon_name]
          pigeon_list[pigeon_name] = {}
        end
        if !pigeon_list[pigeon_name][key]
          pigeon_list[pigeon_name][key] = []
        end
        pigeon_list[pigeon_name][key].push(inner_key.to_s)
      end
    end
  end
  final_pigeon_list
end

#nyc_pigeon_organizer(pigeon_data)
#la_pigeon_organizer(pigeon_data)
