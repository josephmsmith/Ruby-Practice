# test_5.rb

# Question 1: Return the sum of all elements in the array.
def sum_of_elements(arr)
    # Your code here
    arr.sum
  end
  
  # Question 2: Find and return the maximum value in the array.
  def find_max_value(arr)
    # Your code here
    arr.max
  end
  
  # Question 3: Return a new array with only the unique elements from the original array.
  def unique_elements(arr)
    # Your code here
    arr.uniq
  end
  
  # Question 4: Check if the array includes a specific element.
  def includes_element?(arr, element)
    # Your code here
    arr.include?(element)
  end
  
  # Question 5: Return the first n elements from the array.
  def first_n_elements(arr, n)
    # Your code here
    arr[0...n]
  end
  
  # Question 6: Capitalize the first letter of each string in the array.
  def capitalize_first_letter(arr)
    # Your code here
    arr.map{|n| n.capitalize }
  end
  
  # Question 7: Remove nil values from the array.
  def remove_nil_values(arr)
    # Your code here
    arr.select{|item| item != nil}
  end
  
  # Question 8: Multiply each element in the array by a given factor.
  def multiply_by_factor(arr, factor)
    # Your code here
    arr.map{|item| item * factor}
  end
  
  # Question 9: Check if all elements in the array are greater than a specified value.
  def all_greater_than?(arr, value)
    # Your code here
    new_arr = arr.map{|item| item > value}  # returns true if greater than value
    new_arr.any?(false)                     # if any false returns, there are element less then value
  end                                       # true return means there are values less
  
  # Question 10: Calculate the average value of the elements in the array.
  def calculate_average(arr)
    # Your code here
    arr.sum.to_f/arr.length
  end
  
  # Test the methods with sample data
  sample_array = [1, 2, 5, 4, 98, 6, 7, 78, 9, 100]
  
  puts "1. Sum of elements: #{sum_of_elements(sample_array)}"
  puts "2. Max value: #{find_max_value(sample_array)}"
  puts "3. Unique elements: #{unique_elements(sample_array)}"
  puts "4. Includes element 5? #{includes_element?(sample_array, 5)}"
  puts "5. First 3 elements: #{first_n_elements(sample_array, 3)}"
  puts "6. Capitalize each element: #{capitalize_first_letter(['dog','apple','ham'])}"
  puts "7. Remove all nil values[5,3,nil,6]: #{remove_nil_values([5,3,nil,6])}"
  puts "8. Multiply each element in the array by given factor: #{multiply_by_factor(sample_array,2)}"
  puts "9. Check if all elements in the array are greater than a specified value. #{all_greater_than?(sample_array,67)}"
  puts "10. Calculate the average value of the elements in the array. Average is #{calculate_average(sample_array)}"