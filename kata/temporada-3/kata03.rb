# kata/temporada-3/kata03.rb
# https://www.codewars.com/kata/58235a167a8cb37e1a0000db

def retrieve_pair(list_gloves)
  final_array = []

  list_gloves.uniq.each do |color|
    count = list_gloves.count(color) # Count the number of gloves of the same color in the inizial array
    final_array << "#{count / 2} #{color} pair" if count % 2 == 0
  end

  return final_array.compact
end

list_gloves_1 = ["red", "green", "red", "blue", "blue"]
list_gloves_2 = ["red", "red", "red", "red", "red", "red"]

p retrieve_pair(list_gloves_1) # Expected output: ["1 red pair", "1 blue pair"]
p retrieve_pair(list_gloves_2) # Expected output: ["3 red pair"]
