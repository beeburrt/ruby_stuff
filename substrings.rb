# substrings.rb

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy",
  "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(string, array)
  string = string.downcase.split(" ")
  substr_count = Hash.new(0)
  array.each do |word|
    string.each {|str| substr_count[word] += 1 if str.match?(word) }
  end
  substr_count
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
