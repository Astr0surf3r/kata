# https://www.codewars.com/kata/5d16af632cf48200254a6244
# kata 4

def retrieve_strongness(a)
  first = a.first
  last = a.last
  if first < 1 || last > a.max # Check according the constraints
    return "invalid"
  else
    numbers_list = (first..last).to_a
    # create the hash with the numbers and the number of zeros at the end of the binary representation
    hash = numbers_list.each_with_object({}) do |n, h|
      h[n] = n.to_s(2).reverse[/0*/].length # Convert the number to binary and count the number of zeros at the end
    end
  end
  return hash.max_by { |k, v| v }[0] # Return the number with the maximum number of zeros at the end
end

p retrieve_strongness([1, 2])
p retrieve_strongness([5, 10])
p retrieve_strongness([48, 56])

# NOTE: to know how many time a number is divisible by 2 you can count the number of zero at the end of the binary representation
# 48.to_s(2) => "110000" strongess = 4
