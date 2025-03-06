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
      end
    end
  end
  return prime_factors.size
end

def consec_kprimes(k, arr)
  i = 0
  j = 0 # this var will be the result
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
#      end
#    end
#  end
#  puts "#{prime_factors} and the total is: #{prime_factors.size}"
#end
#
#puts "Check how many prime number have a number"
#
#a = gets.chomp
#
#how_many_prime_numbers?(a.to_i)
