require 'pry'
# Write your code here.

katz_deli = []

def line(katz_deli)
    queue = []
    queue_string = ""
    if katz_deli.length > 0 
        # binding.pry
        katz_deli.each_with_index do |person, index|
            queue_string << " #{index+1}. #{person}"
        end
        puts "The line is currently:#{queue_string}"
    else
        puts "The line is currently empty."
    end
end

def take_a_number(katz_deli, name)
    # line()
    puts "Welcome, #{name}. You are number #{katz_deli.length + 1} in line."
    katz_deli << name
end

def now_serving(katz_deli)
    if katz_deli.length > 0
        puts "Currently serving #{katz_deli.shift}."
    else
        puts "There is nobody waiting to be served!"
    end
end
# line(["Logan","Avi","Spencer"])