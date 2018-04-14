
    def trader_du_dimanche(array)
        
        index_best_buy_and_sale = Array.new
        index_vente = array.length - 1
        benef_base = 0
        
        while index_vente > 0
            prix_reference = array[index_vente]
            puts "jour référence: #{index_vente} "
            index_achat = index_vente -1
            
            
            while index_achat >= 0 
                benef = array[index_vente] - array[index_achat]
                if benef > benef_base
                    benef_base = benef
                    index_best_buy_and_sale[0] = index_achat
                    index_best_buy_and_sale[1] = index_vente
                end
                index_achat -= 1
            end
            index_vente -= 1
    end
    print index_best_buy_and_sale
end
    trader_du_dimanche([7, 14,20, 2, 3, 19])

