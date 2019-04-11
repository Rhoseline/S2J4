require 'open-uri'
require 'nokogiri'
	



	# def first_name
	# 	doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
	# 	doc.xpath('//ul[@class ="col3"]/li/a').each do |node|
	#       	puts node.text
	# 	end
	# end

	# first_name


	def email
		doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA719740"))
		doc.xpath('/html/body/div[3]/div/div/div/section[1]/div/article/div[3]/div/dl/dd[4]/ul/li[1]/a').each do |link|
	      	puts mail = link['href']
		end
	end

	email
