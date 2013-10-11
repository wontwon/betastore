module ApplicationHelper

	def display_name_id(product)
    raw("<div class='box-text'>PID: #{product.id} Name: #{product.name} </div>")
	end

	# implement these two methods
	def display_edit_link(product)
		link_to "Edit", edit_product_path(product)
	end

	def display_delete_link(product)
		link_to "Delete", product, :method => :delete
	end
	
end
