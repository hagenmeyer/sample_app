# eindimensionales Feld anlegen

a=Array.new(4)
b=Array.new(5)
c=Array.new(4){ Array.new(5)}

a[0]="Ist mir egal, nehme ich ohnehin nicht"
a[1]=10
a[2]=8

b=[0, 6, 5, 8, 6]

c=[ [0, 0, 0, 0, 0],
    [0, 7, 2, 4, 7],
    [0, 9, 5, 3, 3],
    [0, 7, 7, 6, 4]]

1.upto(3){|i|
  1.upto(4){|j|
      print c[i][j], "  "
  }
  print "\n"
}
