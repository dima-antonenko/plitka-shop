class ImportController < ApplicationController
	def index
		@xml = File.read("public/catalog.xml")
		@hash = Hash.from_xml(@xml)
		@colletions = @hash["bau_catalog"]["groupProduct"]["collection_list"]["collection"]
		@products  = @hash["bau_catalog"]["groupProduct"]["element_list"]["element"]

		@products.each do |product| 
			if product["collection_list"]["collection"].class == 'Array'
			   product["collection_list"]["collection"] = product["collection_list"]["collection"][0]	
			end

			 Product.create(id: product["id"], collection_id: product["collection_list"]["collection"], 
						name: product["name"],
						code: product["code"], price: product["price"], edizm: product["edizm"], 
						field_of_application_list: product["field_of_application_list"], 
						place_in_the_collection: product["place_in_the_collection"], minpart: product["minpart"],
						cratnost: product["cratnost"], weight: product["weight"], size: product["size"], 
						architectural_surface: product["architectural_surface"], base_value: product["BaseValue"],
						color_value: product["ColorValue"], cover_value: product["CoverValue"], 
						surface_alue: product["SurfaceValue"], image: product["pic"], meta_title: product["name"],
						ballance: product["ballance"], ballance_count:["ballanceCount"], category: product["category"],
						place_in_the_collection: product["place_in_the_collection"],
						design_value: product["design_value"], frost_hardiness: product["frost_hardiness"], 
						rectified: product["Rectified"]) 
		end

		@colletions.each do |colletion|	
			Collection.create(id: colletion["id"], category_id: 1, name: colletion["name"], description: " ", 
			interior_list: colletion["interior_list"].to_s, brand: colletion["brand"],
			country: colletion["country"], size: colletion["size"], meta_title: colletion["name"])
		end
	end
end