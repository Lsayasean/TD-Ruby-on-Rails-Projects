# Arrays

numbers = (0..99).to_a
print numbers
puts numbers.include?(100)
puts numbers.include?(90)
numbers_reversed = numbers.reverse
print numbers_reversed
randomized = numbers.shuffle
print randomized

z = numbers.shuffle
print z
z << "Hello"
print z
z.push("World")
z.unshift("MeMeMe")
print z[0]
#z.pop 
z << 3
z << 6
print z.uniq

# ITERATORS
numbers.each {|i| puts "Hello #{i}"}

for num in numbers
  puts "Hi #{num}"
end

names = ["joe","john","james"]

names.each do |name|
  puts "Hello #{name}"
end

names.each do |name|
  puts "Hello #{name.capitalize}"
end

names.each {|name| puts "Konnichiwa #{name.capitalize}"} # Preferred Method

puts numbers.select {|num| num.odd?}

puts numbers.each {|num| print num if num.odd?}

p = ["my","name","is","Doctor"]
puts p.join()
puts p.join(" ")