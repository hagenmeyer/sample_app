# 4.5 Exercises (page 154)

# 1

def string_shuffle(s)
  s.split('').shuffle.join
end

puts string_shuffle("foobar")

# 2

class String
  def shuffle
    self.split('').shuffle.join
  end
end

puts "foobar".shuffle

# 3

person1 = { :first => "Al", :last => "Iphant" }
person2 = { :first => "Isolde", :last => "Baden" }
person3 = { :first => "Wayne", :last => "Interessierts" }

params = {}
params[:father] = person1
params[:mother] = person2
params[:child] = person3

# Alternative: params = {:father => person1, :mother => person2, :child => person3}

puts params[:mother][:first]
puts params[:child][:first]
puts params[:mother][:last]
puts params[:father][:first]

# 4

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
puts h1.merge(h2)
puts h1





