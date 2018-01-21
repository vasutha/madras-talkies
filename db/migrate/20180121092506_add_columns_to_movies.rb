class AddColumnsToMovies < ActiveRecord::Migration[5.1]
	def change
		add_column :movies, :year, :string
	end
end
