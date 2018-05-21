#1. sum an array
@t = 0
def sum_array(a)
  a.each do |i|
    @t = @t.to_i + a[i].to_i
  end
  @t
end

#2. rock paper scissors

def rps
  h = {'r': 0, 'p': 1, 's': 2}
  print "rps: "
  case gets.chop
  when 'r' 
    u = 0
  when 'p' 
    u = 1
  else 
    u = 2
  end
  c = rand(3)
  if (u == 0 && c == 1) || (u == 1 && c == 2) || (u == 2 && c == 0)
    w = 'c'
  elsif (u == c)
    w = 't'
  else
    w = 'p'
  end
  w
end

rps

#3. Fizz Buzz
def fizzBuzz
  (1..100).each do |i|
    if i % 15 == 0
      puts "FIZZBUZZ"
    elsif i % 3 == 0
      puts "FIZZ"
    elsif i % 5 == 0
      puts "BUZZ"
    else
      puts i
    end
  end
end

#4. Multiples up to a given value: The method takes in a number and a max value then finds all multiples of the number up to the max value.
def mults(n, m)
  a = []
  (n..m).each do |i|
    i % n == 0 ? a.push(i) : next
  end
  a
end

puts mults(5, 300)

#5. Caesar Cipher Take in a string and an offset, encrypt the string by moving letters over by the offset and return 
# the encrypted string (e.g “ab”, 3 would return “de”). When you hit Z loop back to A.
def cipher(s, o)
  a = []
  s.downcase.split('').each do |i|
    if i.ord + o > 122
      a.push((i.ord + o - 26).chr)
    else
      a.push((i.ord + o).chr)
    end
  end
  a
end

#6. String Counter Given a string and a sub string count the number of times the substring occurs 
# in the string and print the number to the console.
def stringCounter (str, sub)
  str.scan(/(?=#{sub})/).count
end

#7. Mixed pairs The method takes in an array of arrays. Each inner array contains a pair, the method 
# then mixes up the pairs and returns a new array with the pairs mixed up.
def mixedPairs(a)
  a.each do |i|
    b = i[0]
    i[0] = i[1]
    i[1] = b
  end
  a
end

#8. Love Test Create a method that takes in 2 strings and counts the total number of characters in common. 
# Divide the total number of chars by the number in common. Spaces do not count. Capitols are not the same as lowercase 
# Example: "I love this code", "This code loves me" Total Chars: 27 Chars In Common: 7 Solution: 27 / 7 = 3
def loveTest(s1, s2)
  c = 0
  s1.split('').each do |i|
    if s2.split('').include?("#{i}")
      c += 1
    end
  end
  (s1.length + s2.length).to_f / c.to_f
end

#9. Shopping List Takes in a list of strings. Program sorts the list non case sensitive, removes duplicates and returns 
# as hash using position in the list as priority.
def shoppingList(a)
  c = 1
  h = {}
  a.sort.uniq.each do |i|
    h[c] = i
    c += 1
  end
  h
end
