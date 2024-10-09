# Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer.
# https://www.codewars.com/kata/51b6249c4612257ac0000005
def mapping_roman_numbers(roman)
  roman_numbers_values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  total_of_mapping_chars = 0
  total_substract = 0

  roman.chars.each do |char|
    total_of_mapping_chars += roman_numbers_values[char] if roman_numbers_values.include?(char)
  end

  roman.chars.each_with_index do |char, index|
    next if index == roman.chars.size - 1
    if roman_numbers_values[char] < roman_numbers_values[roman.chars[index + 1]] && roman_numbers_values[char] < (roman_numbers_values[roman.chars[index + 1]]/10)
      return "Invalid roman number"
    elsif roman_numbers_values[char] < roman_numbers_values[roman.chars[index + 1]]
      total_substract += roman_numbers_values[char] 
    end
  end

  total = total_of_mapping_chars - total_substract * 2
end

puts "Enter a roman number: "

roman = gets.chomp

puts "The roman number #{roman} is #{mapping_roman_numbers(roman)}"

# https://www.codewars.com/kumite/6706e989f4959f9880649ed0?sel=6706e989f4959f9880649ed0