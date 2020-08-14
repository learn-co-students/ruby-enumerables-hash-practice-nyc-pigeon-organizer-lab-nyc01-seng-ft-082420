require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each{ |key, value| 
    value.each{ |i, value|
      value.each{ |value| 
        if hash[value]
          if hash[value][key]
            hash[value][key] << i.to_s
          else
            hash[value][key] = [i.to_s]
          end
        else
          hash[value] = { key => [i.to_s]}
        end
      }
    }
  }
  hash
end
