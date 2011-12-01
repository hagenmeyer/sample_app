# Anlegen der Angebotsmengen [a], Nachfragemengen [b] und des Transporttableaus [t]
a=Array.new(4)
a=[0, 10, 8, 7]

b=Array.new(5)
b=[0, 6, 5, 8, 6]

t=Array.new(4) { Array.new(5) }
t=[[0, 0, 0, 0, 0],
   [0, 0, 0, 0, 0],
   [0, 0, 0, 0, 0],
   [0, 0, 0, 0, 0]]

# Definition der Funktion
def nwrule(a, b, t)
  i=1
  j=1
  while i!=a.length && j!=b.length
    x=a[i]<b[j] ? a[i]:b[j]
    a[i]=a[i]-x
    b[j]=b[j]-x
    t[i][j]=x
    if a[i]==0
      i=i+1
    else
      j=j+1
    end
  end
end

# Abruf der Funktion
puts nwrule(a, b, t)

# Abruf des Transporttableaus
1.upto(3) { |i|
  1.upto(4) { |j|
    print t[i][j], "  "
  }
  print "\n"
}
