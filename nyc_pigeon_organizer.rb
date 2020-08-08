def nyc_pigeon_organizer(data)
  result = {}
  data.each do |key, value|
    data[key].each do |key2, value2|
      value2.each do |element|
        if !result[element]
          result[element] = {}
        end
        if !result[element][key]
          result[element][key] = []
        end
        result[element][key].push(key2.to_s)
      end
    end
  end
  result
end
      