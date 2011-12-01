c=Array.new(4) { Array.new(5) }

x=Array.new(4) { Array.new(5) }



A=[0, 20, 25, 21]


B=[0, 15, 17, 22, 12]

puts B

c=[[0, 0, 0, 0, 0],
   [0, 6, 2, 6, 7],
   [0, 4, 9, 5, 3],
   [0, 8, 8, 1, 6]]


0.upto(3) { |i|
  0.upto(4) { |j|
    x[i][j]=0
  }
}


puts "Ordentliche Ausgabe in Spalten und Zeilen per Print-Befehl"

0.upto(3) { |i|
  0.upto(4) { |j|
    print c[i][j], "   "
  }
  # und nun ein Zeilenumbruch
  print "\n"
}
i=1
j=1
imax=3
jmax=4

puts i, imax, j, jmax

puts "Vor Schleife"

while i<=imax or j<=jmax
  x[i][j]=[A[i], B[j]].min
  print i, "  ", j, "  ", x[i][j], "\n"
  A[i]=A[i]-x[i][j]
  B[j]=B[j]-x[i][j]
  if (A[i]==0)
    i=i+1
  end
  if (B[j]==0)
    j=j+1
  end
end

puts "Ordentliche Ausgabe von  x   in Spalten und Zeilen per Print-Befehl"

0.upto(3) { |i|
  0.upto(4) { |j|
    print x[i][j], "   "
  }
  # und nun ein Zeilenumbruch
  print "\n"
}
