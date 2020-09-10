names = ["Bob", "Charlie", "Lin", "Nands", "Rachel", "Ben", "Isaac", "Hugh", "Ashley", "Brendon"]

# Your code here
# for i in names do
#     puts "Welcome " + i + "!"
# end

# i = 0

# while i < names.length
#     puts "Welcome " + names[i] + "!"
#     i += 1
# end

names.each { |n| puts "Welcome #{n}!"}
