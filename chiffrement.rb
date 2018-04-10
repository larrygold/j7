def chiffre_de_cesar(mystring, nb)

  result = mystring.downcase.split('').map! do |lettre|

    i = lettre.ord - 97
    puts i
      if (i+nb)>25 && i>=0 && i<=25
        j = (i+nb)%25-1
      elsif i>=0 && i<=25
        j = i+nb
      else
        lettre.ord
      end
  end

  print result


  return result.map! {|lettre| (lettre.ord+97).chr}.join.capitalize

end


print chiffre_de_cesar("What a string!", 5)
