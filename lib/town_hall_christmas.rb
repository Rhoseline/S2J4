require 'open-uri'
require 'nokogiri'


#E-mail Vaureal :

def get_the_email_of_a_townhal_from_its_webpage
	
	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/" + "#{@mairie_url}"))
	doc.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
	  puts node.text
	end
end

#get_the_email_of_a_townhal_from_its_webpage


#URL MAIRIE :

def get_all_the_urls_of_val_doise_townhalls

	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	doc.xpath('//a[@class = "lientxt"]').each do |link|
	  puts @mairie_url = link['href']

	  get_the_email_of_a_townhal_from_its_webpage 
	end
end

get_all_the_urls_of_val_doise_townhalls
