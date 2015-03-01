class ImportController < ApplicationController
	def index
		@xml = File.read("public/catalog.xml")
		@hash = Hash.from_xml(@xml)
		@colletions = @hash["bau_catalog"]["groupProduct"]["collection_list"]["collection"]
	
	end



end
