require 'open-uri'
require 'nokogiri'
	



	def currency
	arr_nom, arr_prix = [],[]	                                                             # création de deux array vide (arr_nom et arr_prix)
	doc = Nokogiri::HTML(open("https://coinmarketcap.com"))
		doc.xpath('//a[@class = "currency-name-container link-secondary"]').each do |node|   # on vas chercher chaque nom de crypto
	  		nom = node.text																	 # on stock le nom de la crypto dans une variable ("nom") 
	  		arr_nom.push(nom)																 # on push le nom dans notre array "arr_nom"
	  	end
		doc.xpath('//a[@class = "price"]').each do |node|                                    # on vas chercher chaque prix de crypto
	      	prix = node.text																 # on stock le prix de la crypto dans une variable ("prix")
	      	arr_prix.push(prix)																 # on push le prix dans notre array "arr_prix"
		end	
	h = Hash[arr_nom.zip(arr_prix)] 														 # On créer un hash, et on assemble nos deux arrays (avec la méthode .zip)
	puts h  																				 # on affiche notre hash (h)
	end



currency                                                                                     # on appelle notre méthode ! 

