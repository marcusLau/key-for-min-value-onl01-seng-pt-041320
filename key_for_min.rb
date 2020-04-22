# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  low_key = nil
  name_hash.collect do |name, value|
    if low_key == nil 
      low_key = name
    else 
      if value < name_hash[low_key]
        low_key = name
      end
    end
  end
  return low_key
end