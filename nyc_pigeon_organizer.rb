def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each { |key1, value1|
    value1.each { |key2, value2|
      value2.each { |value3|
      new_hash[value3] = {} if new_hash[value3] == nil
      new_hash[value3][key1] = [] if new_hash[value3][key1] == nil
      new_hash[value3][key1] << key2.to_s
      }
    }
  }
  return new_hash
end
