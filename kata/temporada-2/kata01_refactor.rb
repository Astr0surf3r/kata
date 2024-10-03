puts "Submit a sequence of words separated by spaces and I try to retrieve the words with more than # as prefix: "
words = gets.chomp

#check if the input is empty
if words.empty?
  puts "You didn't submit any word/s"
elsif words.include?("#")
  puts "I found the following word/s with #"
  words = words.split(" ")

  #create an array with the words that contain alphabetical characters
  words_with_alphabetical_chars = words.select { |word| word.match?(/^#+[a-zA-Z]/) || word == "#" }
  puts "words with alphabetical chars are #{words_with_alphabetical_chars}"

  # create an array with the words that contain #"
  words_with_pound_chars = words_with_alphabetical_chars.select { |word| word.include?("#") }

  #create an array with the words that contain #"
  words_with_pound_prefix = words_with_alphabetical_chars.map { |word| word.chars[1] == word.chars[0] ? [word.gsub("#", "")] : [] }.compact
  sleep 1
  puts "#the words that contain # as prefix are the following #{words_with_pound_prefix}"
else
  puts "The word/s don't contain any # you submit the following word/s: "
  sleep 1
  puts words
end
