# your code goes here
def begins_with_r (words)
  words.all? do |word|
    word[0] == "r"
  end
end

def contain_a (words)
  words.select do |word|
    word.include?("a")
  end
end

def first_wa(words)
  words.detect do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(words)
  words.delete_if do |string|
    string.is_a?(String) == false
  end
end

def count_elements(words)
  words.uniq.each {|i| count = 0
  words.each {|x| if x == i then count += 1 end}
  i[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|a,b| if i.values[0] == a then merged << i.merge(b) end}}
  merged
end

def find_cool(cool)
  cool.select {|i| i.any? {|a,b| b == "cool"}}
end

def organize_schools(schools)
  locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
