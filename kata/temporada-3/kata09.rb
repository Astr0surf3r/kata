#https://www.codewars.com/kata/k-primes
# 32/2 -> 16
# 16/2 -> 8
# 8/2 -> 4
# 4/2 -> 2
# 2/2 -> 1
#

def calculate_k_numbers(a)
  prime_factors = []
  while a > 1 do
    (2..a).to_a.each do |i|
      if a % i == 0
        prime_factors << i
        a = a / i
        #puts "prime_factors: #{prime_factors}"
        break
      end
    end
  end
  return prime_factors.size
end

def count_kprimes(k, start, nd)
  i = 0
  j = 0
  kprime_array = []
  while start <= nd
    if calculate_k_numbers(start) == k
      kprime_array << start
      j += 1
    end
    start += 1
  end
  return kprime_array
end

def puzzle(n)
  factors_list_1 = []
  factors_list_3 = []
  factors_list_7 = []
  final_factors_list = []
  (2..n).to_a.each do |i|
    #final_factors_list << factors_list if factors_list.sum == n
    if calculate_k_numbers(i) == 1
      factors_list_1 << i
    elsif calculate_k_numbers(i) == 3
      factors_list_3 << i
    elsif calculate_k_numbers(i) == 7
      factors_list_7 << i
    end
  end
  puts "factors_list_1: #{factors_list_1}"
  puts "factors_list_3: #{factors_list_3}"
  puts "factors_list_7: #{factors_list_7}"

  #return factors_list
  max_size = [factors_list_1.size, factors_list_3.size, factors_list_7.size]
  i = 0
  while i < max_size.max
    tmp_array = [factors_list_1[i], factors_list_3[i], factors_list_7[i]]
    final_factors_list << tmp_array unless tmp_array.include?(nil)
    i += 1
  end
  puts "final_factors_list: #{final_factors_list}"
  return final_factors_list
end

#p calculate_k_numbers(501)
p count_kprimes(5, 500, 600)
p puzzle(143)
