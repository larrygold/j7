# str = "bandes de grosses putes"
# result =str.split("").map!{|lettre| lettre.ord + 2}
#  final = result.map! do |nbr| nbr.chr end 
# print final .join("")

def chiffre_de_cesar(mystring, nb = 0)
  array = mystring.downcase.split('')
  result = array.map! do |letter|
          new_char_code =  letter.ord - 97
    if new_char_code + nb >= 26 && (0..26).include?(new_char_code)
      l =  (new_char_code + nb)%26
    elsif (0..26).include?(new_char_code)
      l = new_char_code + nb
    else
      letter.ord - 97     
    end 
  end
print result.map{|code|(code.to_i+ 97).chr}.join()
 
end

print chiffre_de_cesar("abc mnop  wxyz", 5)