def my_sort_reverse(array)
  array.sort {|a, b|
    b <=> a
  }
end

dishes = ["steak", "apple pie", "vegetable soup"]

puts my_sort_reverse(dishes)