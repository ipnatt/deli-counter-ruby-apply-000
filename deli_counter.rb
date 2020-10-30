katz_deli = []

def take_a_number(katz_deli, name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def line(katz_deli) #build out the line method
  if katz_deli.length === 0 #function to check if line is empty by checking number of elements in array
    puts "The line is currently empty."
  else 
    current_line_array = [] #built out new nested array
    katz_deli.each.with_index(1) do |name, index| #each with index function to iterate thru names, index
      current_line_array.push ("#{index}. #{name}") #push function to add elements to array 
    end
    puts "The line is currently: #{current_line_array.join(" ")}"
  end
end

def now_serving(serving_array)
  if serving_array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{serving_array[0]}."
    serving_array.shift
  end
end