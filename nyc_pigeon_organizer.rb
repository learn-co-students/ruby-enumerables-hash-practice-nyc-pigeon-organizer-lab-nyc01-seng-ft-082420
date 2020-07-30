require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_array = {
    "Theo" => {:color => ["purple", "grey"], :gender => ["male"]}, 
    "Peter Jr" => {:color => ["purple", "grey"]}, 
    "Lucky" => {:color => ["purple"]},
    "Ms. K" => {:color => ["grey"]},
    "Alex" => {:gender => ["male"]}
  }
  
  pigeon_hash = {}
  
  data.each do | key, value |
    value.each do |next_key, names|
      names.each do |name|
      
        if  !pigeon_hash[name]
          pigeon_hash[name] = {}
        end
        
        if !pigeon_hash[name][key]
          pigeon_hash[name][key] = []
        end

        pigeon_hash[name][key].push(next_key.to_s)
      end
    end
  end
  pigeon_hash
end
