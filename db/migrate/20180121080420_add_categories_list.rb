class AddCategoriesList < ActiveRecord::Migration[5.1]
	def change
		categories = [{ name: 'Film' }, {name: 'Comedy'}, {name: 'Thriller'}, {name: 'Action Film'}, {name: 'Western'}, {name: 'Animation'}, 
						{name: 'Romance Film'}, {name: 'Horror'}, {name: 'Film noir'}, {name: 'Documentary film'}, {name: 'Adventure Film'}, {name: 'War Film'},
						{name: 'Musical'}, {name: 'Romantic Comedy'}, {name: 'Cult Film'}, {name: 'Historical period drama'}, {name: 'Crime film'}, {name: 'Martial Arts Film'},
						{name: 'Gangster Film'}, {name: 'Gangster Film'}, {name: 'Fiction'}, {name: 'Mockumentary'}, {name: 'Science Fiction Film'}, {name: 'Fantasy'},
						{name: 'Drama'}, {name: 'Biographical Film'}, {name: 'Animation'}, {name: 'Comedy horror'}, {name: 'Mystery'}, {name: 'Family'}]
		Category.create(categories)
	end
end
