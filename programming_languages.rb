require 'pry'

def reformat_languages(languages)
	new_hash = {}
	languages.each do |k1,v1| # :oo and :functional are k1 and their values (v1) are the programming languages
	 	v1.each do |k2,v2| #k2 is language key and v2 is the values 
	 		if new_hash[k2] == nil
	 		new_hash[k2] = v2  #ex new hash ruby => :type =>"interpreted"
	 		new_hash[k2][:style] = []  #now ruby has another value :style with value of empty array
	 		new_hash[k2][:style] << k1
	 		else
	 			new_hash[k2][:style] << k1
	 		 								#then we push whatever k1 was so either :oo or :functional if k2[:style] is not empty}
	 		end
	 	end
end
new_hash
end
