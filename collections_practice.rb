def sort_array_asc(array)
  array.sort!
end
  
def sort_array_desc(array)
  array.sort! {|x, y| y <=> x}
end

def sort_array_char_count(array)
  array.sort!{|x,y| x.length <=> y.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each{|word| word[2] = "$"}
end

def find_a(array)
  array.select{|word| word[0] == "a"}
end

def sum_array(array)
  array.inject { |sum, n| sum + n }  
end

def add_s(array)
  second = array.delete_at(1)
  new_array = array.each_with_index.collect{|word, index| word + "s"}
  new_array.insert(1, "#{second}")
end