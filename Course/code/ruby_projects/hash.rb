# Hashes

my_details = {'name'=>'Doctor','favcolor'=>'red'}
puts my_details['favcolor']
myhash = {a:1,b:2,c:3}
puts myhash[:c]

myhash[:d] = 7

puts myhash[:name] ="Doctor"
puts myhash

myhash.delete(:b)
puts myhash

numbers = {a:1,b:2,c:3,d:4,e:5,f:10}
puts numbers.each {|k,v| puts v}

puts numbers.each {|k,v| puts "The key is #{k} and the value is #{v}"}

# for each key/value pair delete key if value is greater than 3
puts numbers.each {|k,v| numbers.delete(k) if v > 3}

numbers[:d] = 5
numbers [:e] = 9
puts numbers

puts numbers.select {|k,v| v.odd?}
puts numbers

# PRACTICE

