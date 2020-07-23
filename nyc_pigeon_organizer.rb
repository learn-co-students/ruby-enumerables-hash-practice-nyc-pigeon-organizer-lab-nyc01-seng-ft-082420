require 'pry'

# define a method called nyc_pigeon_organizer that takes in a hash called data
# navigate to the innermost value in the key value pairs, which will be the names of the pigeons
# the goal is to extract these name values(strings), while retaining their connection to the associated keys (color: brown, purple, grey, white; gender: male, female;  lives: Central Park, Subway, City Hall, Library)
# after these pigeon name values are extracted, they need to be converted into keys, as they are currently values.
# the original keys need to be converted into key value pairs nested inside the keys of the names of the pigeons
# this new key/value pair nested hash needs to then be returned as a new hash

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
