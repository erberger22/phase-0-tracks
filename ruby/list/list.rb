class TodoList

	def initialize(array)
		@chores_array = array
	end

	def get_items
		@chores_array
	end

	def add_item(item)
		@chores_array << item
	end

	def delete_item(deleted_item)
		@chores_array.delete(deleted_item)
		@chores_array
	end

	def get_item(position)
		@chores_array[position]
	end
end