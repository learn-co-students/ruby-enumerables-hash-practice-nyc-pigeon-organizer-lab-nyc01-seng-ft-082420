
def nyc_pigeon_organizer(data)
  new_data = {}
  data.each do |key,value|
    value.each do |new_value,pigeons|
      pigeons.each do |pigeon|
        
        if !new_data[pigeon] 
          new_data[pigeon] = {}
        end
        
        if !new_data[pigeon][key]
          new_data[pigeon][key] =[]
        end
        
        new_data[pigeon][key] << new_value.to_s
      
      end
    end
    
  end
  new_data
end