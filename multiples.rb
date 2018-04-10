def multiples

i = 0
somme = 0

  while i <= 1000
    if i%3 == 0 || i%5 == 0
      somme += i
    end
    i+=1
  end

return somme

end

puts multiples
