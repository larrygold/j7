
jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD = > 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD =>10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

 jours = [jour_1, jour_2, jour_3, jour_4, jour_5, jour_6, jour_7]
semaine = ["Lundi", "mardi", "mercredi", "jeudi", "vendredi","samedi","dimanche"]
 hash_keys  = jour_1.keys 
 companies_weekly_rates=[]

#  pour chaque clef correspondant à une companie...

 hash_keys.each do |key|
  company_weekly_rates = []

  #puis pour chaque jour de la semaine, j'envoi les valeurs de la companie dans un arrays...
  jours.each do |jour|
    company_weekly_rates.push(jour[key])
  end 

  #une fois constitué, j'envoi l'array des valeurs pour une société
  # dans un array qui contiendra un array de valeur par société
  companies_weekly_rates.push(company_weekly_rates)
end 

best_day_for_selling_all = []

for i in 0...hash_keys.length do 
  best_day_for_selling = {}
  best_day_for_selling[hash_keys[i]] = companies_weekly_rates[i].max
  best_day_for_selling_all << best_day_for_selling 
  puts "La valeur #{hash_keys[i]} atteint son maximum le #{semaine[companies_weekly_rates[i].index(companies_weekly_rates[i].max)]} avec #{best_day_for_selling[hash_keys[i]]}." 
end 


