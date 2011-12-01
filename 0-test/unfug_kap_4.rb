
# 4.2.4 Method definitions
def string_message(string)
  if string.empty?
    "It's an empty string!"
  else
    "The string is nonempty."
  end
end

#puts string_message("")
#puts string_message("Hallo Welt!")

# Einfache Addition zweier Zahlen
def summe(a,b)
  a+b
end
#puts summe(1,1)

# n Fakultät
# 1. Variante
 def fact(n)
   if n == 0
     1
   else
     n * fact(n-1)
   end
 end
#puts fact(5)

# 2. Variante (rekursive Funktion)
def fact2(n)
  x=n
  puts ""
  puts "Vorher " + x.to_s
  if n>1
    x=n*fact2(n-1)
  else
    x=1
  end
  puts "Nachher " + x.to_s
  return x   # Verbessert die Lesbarkeit & Verständlichkeit des Programms
end
#puts fact2(5)

# 3. Variante
def fact3(n)
  x=1
  for i in 1..n
    x=x*i
  end
  return x
end
#puts fact3(5)

# 4. Variante (while-Schleife)
def fact4(n)
  i=1
  x=1
  while !(i>n)
    x=x*i
    i=i*1
  end
  return x
end
#puts fact4(5)

# 5. Variante (Block-Methode) [do / end als alternative für geschweifte klammern]
def fact5(n)
  x=1
  (1..n).each{|i|
  x=x*i
  }
  return x
end
#puts fact5(5)

# Beispiel map-Funktion
L=(1..10).map { |k| k*10}

#puts L

# 4.4.2 Class inheritance
class Word
   def allcapitals?(string)
     string == string.upcase
   end
end

w = Word.new
puts w.allcapitals?("foobar")
puts w.allcapitals?("BLA")

# 4.4.2 Class inheritance
class Wordd < String
   def allcapitals?
     self == self.upcase
   end
end

w = Wordd.new("HAgen")
puts w.allcapitals?
w = Wordd.new("HAHA")
puts w.allcapitals?


