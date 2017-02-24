#Create an Array
array = [50, 60, 70, 80]
#Define a method that calls array and an integer
def search_array(array, n)
#Create an if else to return the indexed value of the array Ex 50 returns 0
counter = 0
while counter < array.length
  if array[(array.length + counter) - array.length] == n
    puts (array.length + counter) - array.length
  else 
    puts nil
  end
  counter += 1
end
end

p search_array(array, 70)
p search_array(array, 90)

def fib_array(n)
  array = [0, 1]
  counter = 0
  while counter < (n - 2)
    array.push(array[0 + counter] + array[1 + counter])
    counter += 1
  end
  array
end
p fib_array(6)
p fib_array(100)[-1] == 218922995834555169026

=begin
Bubble Sort Algorithm Practice
Goal: Integer sorting algorithm
1. Create method that takes an array of integers as an argument
2. Create a loop that will go through the array
3. Want another loop that will go through the array and compare values
4. Continue until nothing is swapped
=end



def bubsort(array)
  n = array.length
  loop do 
    swapped = false
    counter = 0 
    until counter == n - 1
      if array[0 + counter] > array[1 + counter]
        array[0 + counter], array[1 + counter] = array[1 + counter], array[0 + counter]
        swapped = true
      end
      counter += 1
    end
    break if swapped == false
  end
  array
end

p bubsort([10, 20, 8, 5, 2])