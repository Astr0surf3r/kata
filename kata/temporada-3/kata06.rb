# Description: This program receives an array and returns a new array with the elements in even positions.
# But need to be recursive ... it doesn't work yet.
@new_array = []
def give_the_array(arr, new_array = [])
  puts "arr #{arr}"
  arr_size = arr.length - 1
  j = arr_size
  i = 0
  while i < j
    if i == 0 || i.even?
      new_array << arr[i]
    end
    i += 1
  end
  puts "new array #{arr} - #{new_array}"
  #give_the_array(arr - @new_array)
  k = arr - new_array
end

arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr2 = ['this', 'code', 'is', 'right', 'the']

p give_the_array(give_the_array(give_the_array(give_the_array(give_the_array(arr1)))))
#p give_the_array(arr2)
