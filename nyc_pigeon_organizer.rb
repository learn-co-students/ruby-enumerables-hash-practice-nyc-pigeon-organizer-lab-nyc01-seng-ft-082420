require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |key, value|
  value.each do |inner_value, names|
    names.each do |name|
  if !new_hash[name]
    new_hash[name] = {}
  end
  if !new_hash[name][key] 
    new_hash[name][key] = []
  end
  new_hash[name][key] << inner_value.to_s
  end
  end
 end
 new_hash
end