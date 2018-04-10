
    def trader_du_dimanche(array)
        comparaisons_semaine = []
        index_vente = array.length - 1
        
    
        while index_vente > 0
            prix_reference = array[index_vente]
            puts "jour référence: #{index_vente} "
            comparaisons_jour = []
            index_achat = index_vente -1

            while index_achat >= 0 
                benef = array[index_vente] - array[index_achat]
                index_achat -= 1
                comparaisons_jour.unshift(benef)
              
            end
             
            comparaisons_semaine.push(comparaisons_jour.max)
            print "benef max semaine =>#{comparaisons_semaine} "
            index_vente -= 1
    end
end
    trader_du_dimanche([2, 5, 3, 6])

