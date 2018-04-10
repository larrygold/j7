def chiffre_de_cesar(mystring, nb)

  result = mystring.downcase.split('').map! do |lettre|
    lettre.ord - 97
  end

  print result


  return result.map! {|lettre| lettre.chr}.join

end


print chiffre_de_cesar("abcdez", 5)
