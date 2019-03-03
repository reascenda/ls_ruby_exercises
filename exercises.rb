# These are the answers to the exercises in the Launch School "Introduction to Programming" book

# Chapter One - The Basics

# 1

first_name = "Simon"
last_name = "Mahony"
full_name = first_name + ' ' + last_name
puts full_name

# 2

rand_number = 1234
puts rand_number / 1000
puts rand_number % 1000 / 100
puts rand_number % 100 / 10
puts rand_number % 10

# 3

dict_films = {:film1 => 1900, :film2 => 1910, :film3 => 1920, :film4 => 1930, :film5 => 1940}
puts dict_films[:film1]
puts dict_films[:film2]
puts dict_films[:film3]
puts dict_films[:film4]
puts dict_films[:film5]

# 4

puts (5*4*3*2*1)
puts (6*5*4*3*2*1)
puts (7*6*5*4*3*2*1)
puts (8*7*6*5*4*3*2*1)

# 5

puts 2.1**2
puts 3.1**2
puts 4.1**2

# Chapter Two - Variables
# programs not written as separate files for simplicity

# 1 - name.rb

name = gets.chomp
puts "Welcome #{name}!"

# 2 - age.rb

age = gets.chomp.to_i
puts "In 10 years you will be #{age+10}"
puts "In 20 years you will be #{age+20}"
puts "In 30 years you will be #{age+30}"

# 3 - name.rb expanded

10.times do
  puts name
end 

# 4 - name.rb modified

first_name = gets.chomp
second_name = gets.chomp

puts first_name + ' ' + second_name

# Chapter Three - Methods

# 1

def greeting(name)
  return "Welcome #{name}!"
end

# 3

def multiply(a,b)
  return a * b
end

# 5

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# Chapter Four - Flow Control

# 1

False
False
False
True
True

# 2

word = gets.chomp
if word.length > 10
  word.upcase
else
  word
end

# 3 & 5

num = gets.chomp.to_i
case
when num > 51 && num <= 100
  "Your number is between 51 and 100"
when num < 51
  "Your number is between 0 and 51"
when num > 100
  "Your number is greater than 100"
end

# Chapter 5 - Loops & Iterators

# 2

initial = gets.chomp

while initial != "Y"
  puts "Do you want to exit?"
  initial = gets.chomp
end

# 3

ingredients = ["spinach","kale","tomatoes","peas","squash","carrots"]

ingredients.each_with_index do |ing,index|
  puts "#{index} #{ing} is not as tasty as chocolate"
end

# 4

def tozero(num)
  puts num
  num -= 1
  if num != 0 
    tozero (num)
  end
end

# Chapter Six - Arrays

# 1

arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.include?(3)

# 2

arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

# 7

arr = [1,2,3,4,5,6,7,8,9,10]

arr2 = arr.map {|e| e +2}

p arr, arr2


# Chapter 7 - Hashes

# 1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

arr = family.select do

  k == :sisters || k == :brothers

# 3

          family.each_key {|k| puts k}
family.each_value {|v| puts v}

# 4

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# 5

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.values.include?("Bob")

# Chapter 8 - More Stuff

# 1

list = ["laboratory",
        "experiment",
        "Pans Labyrinth",
        "elaborate",
        "polar bear"]


list.each do |e|
  if /lab/.match(e)
    puts e
  else
    puts "no match"
  end
end


# Exercises 

# 1

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

list.each {|e| puts e}

# 2

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

list.each do |e|
  if e > 5
    puts e
  end
end

# 3

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

list.select {|e| e % 2 != 0}

# 4

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

list.push(11)
list.unshift(0)

# 5

list.pop
list.push(3)

# 6

list.uniq!

# 8

hash_one = {a: "frog",b: "cow" ,c: "dog"}

hash_two = {:a => "frog", :b => "cow", :c => "dog"}

# 9 

h = {a:1, b:2, c:3, d:4}

h[:b]

h[:e] = 5

h.delete_if {|k, v| v < 3.5}

# 12

contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]

# 13

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 14

contacts ["Joe Smith"][:email]
contacts ["Sally Johnson"][:phone]

# 15

