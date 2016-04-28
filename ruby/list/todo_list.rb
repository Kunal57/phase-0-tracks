# 6.6 Mandatory Pairing: Testing a Class with RSpec

class TodoList
	def initialize(items)
		@items = items
	end
	
	def get_items
		@items
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item_to_delete)
		@items.delete(item_to_delete)
	end

	def get_item(index)
		@items[index]
	end
end
