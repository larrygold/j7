def trader_du_dimanche(myarray)
  myarray.map! {|number| number.to_i}
  jour_achat = 0
  spreads = Array.new(myarray.size-1) {Array.new(myarray.size-1, 0)}
  max_array = Array.new(myarray.size-1,0)

  while jour_achat < myarray.size - 1
    jour_vente = jour_achat + 1
    while jour_vente < myarray.size
      spreads[jour_achat][jour_vente] = myarray[jour_vente] - myarray[jour_achat]
      # print "J" + jour_vente.to_s + " " + spreads[jour_achat][jour_vente].to_s + " | "
      jour_vente += 1
    end
    a = max_array[jour_achat] = spreads[jour_achat].max
    # print a.to_s + " | "
    jour_achat += 1
  end

  achat_max = max_array.each_with_index.max.to_s
  jour_achat_max = achat_max.split(",")[1].split("]")[0].split(" ").join.to_i


  jour_achat_max_plus_1 = jour_achat_max + 1
  vente_max = spreads[jour_achat_max].each_with_index.max.to_s
  jour_vente_max = vente_max.split(",")[1].split("]")[0].split(" ").join.to_i
  jour_vente_max_plus_1 = jour_vente_max + 1

  prix_achat_max = myarray[jour_achat_max]
  prix_vente_max = myarray[jour_vente_max]

  return "Il faut acheter le jour #{jour_achat_max_plus_1} au prix de #{prix_achat_max}€ et vendre le jour #{jour_vente_max_plus_1} au prix de #{prix_vente_max}€"

end


puts trader_du_dimanche([4, 15, 5, 22, 99])
