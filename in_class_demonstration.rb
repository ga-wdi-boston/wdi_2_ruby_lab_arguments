# STANDARD ARGUMENTS
# Standard method, single argument
def square(x)
	x ** 2
end

# Standard method, two arguments
def add(a, b)
	a + b
end

# DEFAULT ARGUMENTS
# Method with default argument
# If an argument isn't provided, then the default
# will be the string of "Hello"
def greet(greeting="Hello")
	puts greeting
end

# SPLAT
# This method has a splat for people
# You can invoke it with:
# greet_people("Hello", "Alice", "Adam", "Chris")
def greet_people(greeting, *people)
	people.each {|person| puts "#{greeting} #{person}"}
end

# Splat doesn't always need to come at the end
# But it only works if you're passing a hash at the end
def arguments_and_opts(*args, opts)
  puts "arguments: #{args} options: #{opts}"
end

arguments_and_opts 1,2,3, name: "David", age: 31

# SPLAT FOR INVOKING
# You can also use a splat to invoke a method
people = ["Walker", "Sarah", "Rahul"]
greet_people "Howdy!", *people

# but you can also use it with a method that isn't expecting it
numbers = [1, 2]
puts add *numbers

# WITH PARALLEL ASSIGNMENT
a, b = 1, 2
# a == 1
# b == 2

# from: http://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/
first, *list = [1,2,3,4]          # first= 1, list= [2,3,4]
*list, last  = [1,2,3,4]          # list= [1,2,3], last= 4
first, *center, last = [1,2,3,4]  # first= 1, center= [2,3], last=4

# Array cohersion
# This is a little weird, but cool
a = *"Hello"  #=> ["Hello"]
a = *(1..3)   #=> [1, 2, 3]
a = *[1,2,3]  #=> [1, 2, 3]
