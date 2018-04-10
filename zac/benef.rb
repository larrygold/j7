
    def trader_du_dimanche(array)
        comparaisons_semaine = []
        index_best_buy_and_sale = Array.new
        index_vente = array.length - 1
        benef_base = 0
        
        while index_vente > 0
            prix_reference = array[index_vente]
            puts "jour référence: #{index_vente} "
            comp_achat = index_vente -1
            comparaisons_jour = []
            
             
            while index_achat >= 0 
                benef = array[index_vente] - array[index_achat]
                index_achat -= 1
                comparaisons_jour.unshift(benef)
                if benef > benef_base
                    index_best_buy_and_sale[0] = index_achat
                    index_best_buy_and_sale[1] = index_vente
                end

            end
             
            comparaisons_semaine.push(comparaisons_jour.max)
            print "benef max semaine =>#{comparaisons_semaine} "
            index_vente -= 1
    end
end
    trader_du_dimanche([2, 5, 3, 6])

