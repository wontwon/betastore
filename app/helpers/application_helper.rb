module ApplicationHelper

	def display_name_id(product)
    # raw allows you to return a html string and have it rendered and not have it interperted as a just a "string"
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
