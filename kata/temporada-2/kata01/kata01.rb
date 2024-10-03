puts "Submit a sequence of words separated by spaces and I try to retrieve the words with more than # as prefix: "
words = gets.chomp

#check if the input is empty
case
when words.empty?
  puts "You didn't submit any word/s"
when words.include?("#")
  puts "I found the following word/s with #"
  words = words.split(" ")
  words_with_alphabetical_chars = []
  puts "words with alphabetical chars are #{words}"
  words.each do |word|
    #create an array with the words that contain alphabetical characters and # single character
    if word.match?(/^#+[a-zA-Z]/) || word == "#"
      words_with_alphabetical_chars.push(word)
    end
  end
  words_with_pound_chars = []
  words_with_alphabetical_chars.each do |word|
    #create an array with the words that contain #"
    if word.include?("#")
      words_with_pound_chars.push(word)
    end    
  end
  puts "#the words that contain # are the following #{words_with_pound_chars}"
  sleep 1
  words_with_pound_prefix = []
  words_with_pound_chars.each do |word|
    #create an array with the words that contain # as prefix
    if word.start_with?("#") && word.size == 1
      words_with_pound_prefix << []
    elsif word.chars[1] == word.chars[0]
      words_with_pound_prefix.push([word.gsub("#", "")])
    elsif word.include?("#")
      words_with_pound_prefix.push([word.gsub("#", "")])
    else
      words_with_pound_prefix << []
    end
  end
  sleep 1
  puts "#the words that contain # as prefix are the following #{words_with_pound_prefix}"
  when !words.include?("#")
    puts "The word/s don't contain any # you submit the following word/s: "
    sleep 1
    puts words
end
