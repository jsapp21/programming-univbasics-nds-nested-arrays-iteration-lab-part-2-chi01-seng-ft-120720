# src will be an array of arrays of integers
# Produce a new Array that contains the smallest number of each of the nested arrays

# require 'pry'

def find_min_in_nested_arrays(src)
  counter = 0 
  new_array = []
  
  while counter < src.count do
    inner_counter = 0
    smallest_number = src[counter][0]   
    while inner_counter < src[counter].count do
      if src[counter][inner_counter] < smallest_number
        smallest_number = src[counter][inner_counter]
      end
      inner_counter += 1 
      binding.pry 
    end
    new_array << smallest_number
    counter += 1
  end 
  new_array 
end