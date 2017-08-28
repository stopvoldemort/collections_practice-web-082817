require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort_by do |word|
    word.length
  end
end

def swap_elements(array)
  array[array.size] = array[1]
  array[1] = array[2]
  array[2] = array[array.size-1]
  array.pop
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[array.size] = array[index]
  array[index] = array[destination_index]
  array[destination_index] = array[array.size-1]
  array.pop
  array
end

def reverse_array(array)
  new_array=[]
  i=0
  while i < array.length do
    new_array[i] = array[array.length - i - 1]
    i+=1
  end
  new_array
end

def kesha_maker(array)
  array.each do |word|
    word[2] = "$"
  end
end

def find_a(array)
  array.select do |word|
    word[0] == "a" || word[0] == "A"
  end
end

def sum_array(array)
  sum = 0
  array.each do |number|
    sum = sum + number
  end
  sum
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index!=1
      word << "s"
    else
      word
    end
  end
end
