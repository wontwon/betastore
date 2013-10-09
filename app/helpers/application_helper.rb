module ApplicationHelper

  def display_name_id(product)
    # raw allows you to return a html string and have it rendered and not have it interperted as a just a "string"
    raw("<div class='box-text'>PID: #{product.id} Name: #{product.name} </div>")
  end
  # your old helper
	# def display_name_id(name, id)
	# 	p "#{name} - ##{id}"

	# end

# implement these two methods
  def display_edit_link(product)
  end

  def display_delete_link(product)
  end
end
