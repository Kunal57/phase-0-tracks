class TodoList
	
	def initialize(array_of_items)
		@array_of_items = array_of_items
	end

	def get_items
		@array_of_items
	end

	def get_item(item_index)
		@array_of_items.fetch(item_index)
	end

	def add_item(item)
		@array_of_items << item
	end

	def delete_item(item)
		@array_of_items.delete(item)
	end

end