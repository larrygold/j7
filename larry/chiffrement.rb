def chiffre_de_cesar(mystring, nb)

  result = mystring.downcase.split('').map! do |lettre|

    i = lettre.ord - 97

      if (i+nb)>25 && i>=0 && i<=25 # si i correspond au code d'une lettre necessitant de boucler
        j = (i+nb)%25-1
      elsif i>=0 && i<=25 #autrement, si i correspond à une lettre ne nécessitant pas de boucler
        j = i+nb
      else # si i ne correspond pas au code d'une lettre
        i
      end
  end
  return result.map{|lettre| (lettre.ord+97).chr}.join.capitalize
end

puts "Veuillez entrer une phrase"
phrase = gets.chomp

puts "Veuillez entrer un nombre de décalages"
decalage = gets.chomp.to_i

puts chiffre_de_cesar(phrase, decalage)
