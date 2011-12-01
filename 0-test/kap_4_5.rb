h1 = {:a => 100, :b => 200}
h2 = {:b => 254, :c => 300}

h3 = h1.merge(h2)
h4 = h1.merge(h2){|key, oldval, newval| newval - oldval}

puts h1
puts h2
puts h3
puts h4