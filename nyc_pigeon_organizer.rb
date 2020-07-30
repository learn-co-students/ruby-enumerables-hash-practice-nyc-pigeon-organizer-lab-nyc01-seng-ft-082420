require 'pry'
def nyc_pigeon_organizer(data)
  results = data.each_with_object({}) do |(key, value), pigeon_array|
    
    value.each do |next_key, names|
      names.each do |name|
      
     if  !pigeon_array[name]
       pigeon_array[name] = {}
     end
     if !pigeon_array[name][key]
       pigeon_array[name][key] = []
    end
    pigeon_array[name][key].push(next_key.to_s)
end
  end
end
end
