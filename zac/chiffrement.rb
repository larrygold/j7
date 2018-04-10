def chiffre_de_cesar(mystring, nb = 0)

    result = mystring.downcase.split('')
    decale = result.map do |lettre|
 
      custom_charcode = lettre.ord - 97
    # regex ??
        if custom_charcode >= 26 - nb 

            new_charcode = nb - (26 - custom_charcode)
            # puts "plus que décalage #{new_charcode}" 
            # puts "code final over limit =>#{97 + new_charcode}"
            lettreReturn = (97 + new_charcode).to_i.chr 
            #  puts "lettre over limite #{lettreReturn}"
            lettre = "" 
            lettre += lettreReturn
            return lettreReturn  
        else 
        
            lettreNoReturn = (lettre.ord + nb).to_i.chr
            lettre = ""
            lettre += lettreNoReturn
            return lettreNoReturn
        end
    end
    return decale
end
chiffre_de_cesar("salut les putes",1)

# pourquoi ne tourne plus???
#comment filter les regex d'entrée