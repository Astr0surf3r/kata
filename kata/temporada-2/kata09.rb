# https://www.codewars.com/kata/5727bb0fe81185ae62000ae3 # kata09

def handle_string(string_split)
    chars_list = string_split
    puts "The array chars_list at the start of the method is #{chars_list}"
    
    # Loop until no '#' is found
    while chars_list.include?("#")
      # Find the index of the first '#' if you have severals of them in the array chars_list.index("#") gives you the first one
      hash_index = chars_list.index("#")
      
      # Delete '#' and the previous character if it exists
      if hash_index > 0
        chars_list.delete_at(hash_index)    # Remove the '#'
        chars_list.delete_at(hash_index - 1) # Remove the previous character
      else
        chars_list.delete_at(hash_index) # If '#' is the first character we delete it
      end
    end
  
    puts "The array chars_list at the end is #{chars_list}"
    chars_list.join
  end
  
  # Example inputs
  a = "abc#d##c" # Expected output: "ac"
  b = "abc##d######" # Expected output: ""
  c = "#######" # Expected output: ""
  d = "" # Expected output: ""
  e = "abc#d##c#" # Expected output: "a"
  f = "a#bc#d" # Expected output: "bd"
  
  puts handle_string(a.chars) # Expected output: "ac"
  puts handle_string(b.chars) # Expected output: ""
  puts handle_string(c.chars) # Expected output: ""
  puts handle_string(d.chars) # Expected output: ""
  puts handle_string(e.chars) # Expected output: "a"
  puts handle_string(f.chars) # Expected output: "bd"
  
  # Explanation of the code
  # chars_list = ["a", "#", "b", "c", "#", "d"] # hash_index = 1
  # chars_list = ["b", "c", "#", "d"] # hash_index = 2
  # chars_list = ["b", "d"] 