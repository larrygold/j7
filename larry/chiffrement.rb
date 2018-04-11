def chiffre_de_cesar(mystring, nb)

  result = mystring.downcase.split('').map! do |lettre|

    i = lettre.ord - 97
    puts i

      if (i+nb)>25 && i>=0 && i<=25 # si i correspond au code d'une lettre necessitant de boucler 
        j = (i+nb)%25-1
      elsif i>=0 && i<=25 #autrement, si i correspond à une lettre ne nécessitant pas de boucler
        j = i+nb
      else # si i ne correspond pas au code d'une lettre
        return lettre
      end
  end
  return result.map{|lettre| (lettre.ord+97).chr}.join.capitalize
end
print chiffre_de_cesar("abcde mnopqr!", 5)
