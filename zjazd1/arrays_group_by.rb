array = Array.new(100) { rand(100) }

hash = array.group_by { |e| e%10 }
hash = hash.transform_values! { |v| v.length}.sort.to_h

print hash