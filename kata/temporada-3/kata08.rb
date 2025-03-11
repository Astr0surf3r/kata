# kata https://www.codewars.com/kata/573182c405d14db0da00064e

# k-prime number is a number that has exactly k prime factors, counted with multiplicity.
# example 8 = 2 * 2 * 2 = 3 prime factors k = 3
# example 12 = 2 * 2 * 3 = 3 prime factors k = 3

def calculate_k_numbers(a)
  prime_factors = []
  while a > 1 do
    (2..a).to_a.each do |i|
      if a % i == 0
        prime_factors << i
        a = a / i
        break
      end
    end
  end
  return prime_factors.size
end

def consec_kprimes(k, arr)
  i = 0
  j = 0 #
  while i < arr.length - 1
    #puts "i: #{i} arr[i]: #{arr[i]} arr[i + 1]: #{arr[i + 1]}"
    #sleep 2
    if calculate_k_numbers(arr[i]) == k && calculate_k_numbers(arr[i + 1]) == k
      j +=1 # this var increase of 1 digit if the consecutive numbers have equal k prime factors
    end
    i += 1
  end
  #puts "j: #{j}"
  return j
end

#a = 10005
#p calculate_k_numbers(a)

p consec_kprimes(4, [10005, 10030, 10026, 10008, 10016, 10028, 10004])
p consec_kprimes(4, [10175, 10185, 10180, 10197])
p consec_kprimes(5, [103044, 103000, 102921, 102996, 103012, 102860, 102830, 102930, 102948, 102825, 102834, 102810, 102792, 102843, 102897, 102858, 103048, 102968, 102952, 102820, 102848, 102884, 103026, 102976, 103016, 102936, 102978, 102885, 102870, 102808, 102800, 102776, 102950, 103014, 102804, 102795, 102879, 102980, 102880, 102753, 102852, 102765, 102904, 102832])
p consec_kprimes(7, [105200, 105084, 105184, 105168, 105040, 105192, 105072, 105138])
#Calculate k prime
#
#def how_many_prime_numbers?(a)
#  prime_factors = []
#  while a > 1 do
#    puts "a sotto while: #{a}"
#    (2..a).to_a.each do |i|
#      puts "i: #{i} a: #{a}"
#      #sleep 2
#      if a % i == 0
#        prime_factors << i
#        puts "prime_factors: #{prime_factors}"
#        a = a / i
#        break
#      end
#    end
#  end
#  puts "#{prime_factors} and the total is: #{prime_factors.size}"
#end
#
#how_many_prime_numbers?(105200)

#
#puts "Check how many prime number have a number"
#
#a = gets.chomp
#
#how_many_prime_numbers?(a.to_i)
