      # pigeon_data = {
      #   :color => { /// this is the key
      #     :purple => ["Theo", "Peter Jr.", "Lucky"], /// purple is the 'value'
      #     :grey => ["Theo", "Peter Jr.", "Ms. K"], /// use each operator on value to store color as inner_key 
      #     :white => ["Queenie", "Andrew", "Ms. K", "Alex"], // names are stored under names variable
      #     :brown => ["Queenie", "Alex"] // each operator on names, search new hash if not then create
      #   },
      #   :gender => {
      #     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], // if each key does not exist in new hash under name, create it
      #     :female => ["Queenie", "Ms. K"] // push the (old) catagories as "inner_keys" to new keys
      #   },
      #   :lives => {
      #     "Subway" => ["Theo", "Queenie"],
      #     "Central Park" => ["Alex", "Ms. K", "Lucky"],
      #     "Library" => ["Peter Jr."],
      #     "City Hall" => ["Andrew"]
      #   }
      # }


def nyc_pigeon_organizer(data)
  
  final_results = data.each_with_object({}) do |(key, value), final_array|
    
    value.each do |inner_key, names|
      
      names.each do |name|
        
        if !final_array[name]
          final_array[name] = {}
        end
        
        if !final_array[name][key]
          final_array[name][key] = []
        end
        
        final_array[name][key].push(inner_key.to_s)
      end
      
    end
    
  end

end
