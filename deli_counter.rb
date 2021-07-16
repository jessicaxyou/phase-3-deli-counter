require 'pry'

katz_deli = [] 

def line(katz_deli)
    if katz_deli.count == 0
        puts "The line is currently empty."
    else
        new_array = []
        # need to use map to add index in front of each element and then add to new array
        # then use join to convert array to string with index already included
        # then puts line with new string with index
        katz_deli.map.with_index do |name, index|
            new_array << "#{index+1}. #{name}"
        end
        # new_array.join(", ")
        puts "The line is currently: " << new_array.join(" ")
    end
end

def take_a_number(katz_deli, person)
    if katz_deli.count == 0
        katz_deli << person
        puts "Welcome, #{person}. You are number 1 in line."
    elsif katz_deli.count > 0
        katz_deli << person
        katz_deli.last do |name, index|
            puts "Welcome, #{name}. You are number #{index+1} in line."
        end
    end
end

def now_serving(name)
    if name.count == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{name[0]}."
        name.shift
    end
end