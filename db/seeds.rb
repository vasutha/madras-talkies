def seed_image(file_name)
	 File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
end

def find_category(name)
	Category.find_by_name(name).id
end

def find_movie(name)
	Movie.find_by_title(name).id
end

User.create!({:email => "vasuthashankar@gmail.com", :password => "vasu@123", :password_confirmation => "vasu@123" })
user_id = User.find_by_email('vasuthashankar@gmail.com').id

categories = [{ name: 'Film' }, {name: 'Comedy'}, {name: 'Thriller'}, {name: 'Action Film'}, {name: 'Western'}, {name: 'Animation'}, 
		{name: 'Romance Film'}, {name: 'Horror'}, {name: 'Film noir'}, {name: 'Documentary film'}, {name: 'Adventure Film'}, {name: 'War Film'},
		{name: 'Musical'}, {name: 'Romantic Comedy'}, {name: 'Cult Film'}, {name: 'Historical period drama'}, {name: 'Crime film'}, {name: 'Martial Arts Film'},
		{name: 'Gangster Film'}, {name: 'Gangster Film'}, {name: 'Fiction'}, {name: 'Mockumentary'}, {name: 'Science Fiction Film'}, {name: 'Fantasy'},
		{name: 'Drama'}, {name: 'Biographical Film'}, {name: 'Animation'}, {name: 'Comedy horror'}, {name: 'Mystery'}, {name: 'Family'}]

Category.create!(categories)

movies_list =[{
			title: 'Anand',
			year: '1971',
			description: 'The story of a terminally ill man who wishes to live life to the full before the inevitable occurs, as told by his best friend.',
			category_id: find_category('Drama'),
			director: 'Hrishikesh Mukherjee',
			user_id: 1,
			movie_img: seed_image('anand')
		}, {
			title: 'Drishyam',
			year: '2013',
			description: 'A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.',
			director: 'Jeethu Joseph',
			category_id: find_category('Thriller'),
			user_id: user_id,
			movie_img: seed_image('drishyam')
		}, {
			title: 'Nayakan',
			year: '1987',
			description: "A common man's struggles against a corrupt police force put him on the wrong side of the law. He becomes a don, who is loved and respected by many, but his growing power and influence exact a heavy toll.",
			category_id: find_category('Crime film'),
			director: 'Mani Ratnam',
			user_id: user_id,
			movie_img: seed_image('nayakan')
		},{
			title: 'Anbe Sivam',
			year: '2003',
			description: 'Two men, one young and arrogant, the other damaged - physically but not spiritually - by life, are thrown together by circumstances, and find that they are in some ways bound together by fate.',
			category_id: find_category('Drama'),
			director: 'Sundar C',
			user_id: user_id,
			movie_img: seed_image('anbesivam')
		},{
			title: 'Gol Maal',
			year: '1979',
			description: "Ramprasad is a recent college graduate who finds a job with a finicky man, Bhavani Shankar, who believes that a man without a mustache is a man without a character. Bhavani Shankar is also against any of his employees indulging in recreation of any kind. When Ramprasad is caught by his boss at a hockey match, he has to invent a twin brother, the clean-shaven Laxman Prasad, to save his job. When Bhavani's daughter falls in love with the clean-shaven Laxman Prasad, and insists on marrying him, and Bhavani insists she should marry Ramprasad, things take a whacky turn. A fake mother and a hilarious chase are other enjoyable features involved in this comedy.",
			category_id: find_category('Comedy'),
			director: 'Hrishikesh Mukherjee',
			user_id: user_id,
			movie_img: seed_image('golmaal')
		},{
			title: 'Black Friday',
			year: '2004',
			description: 'Black Friday is a film about the investigations following the 1993 serial Bombay bomb blasts, told through the different stories of the people involved --police, conspirators, victims, middlemen.',
			category_id:find_category('Crime film'),
			director: 'Anurag Kashyap',
			user_id: user_id,
			movie_img: seed_image('blackfriday')
		},{
			title: 'Dangal',
			year: '2016',
			description:'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.',
			category_id:find_category('Drama'),
			director: 'Nitesh Tiwari',
			user_id: user_id,
			movie_img: seed_image('dangal')
		},{
			title: 'Vikram Vedha',
			year: '2017',
			description: 'A ruthless cop wages a war against an unscrupulous gangster. However, certain events lead to the cop questioning his principles and motives. This leaves behind a battle between good and bad with what is good and what is bad being unclear.',
			category_id:find_category('Thriller'),
			director: 'Gayatri, Pushkar',
			user_id: user_id,
			movie_img: seed_image('vikramvedha')
		},{
			title: 'Taare Zameen Par',
			year: '2007',
			description: 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school',
			category_id:find_category('Family'),
			director: 'Aamir Khan, Amole Gupte',
			user_id: user_id,
			movie_img: seed_image('taare')
		},{
			title: 'Jaane Bhi Do Yaaro',
			year: '1983',
			description: 'Two friends, attempting to start-up their own photo studio, come across shady dealings, corruption and murder, and must fight to bring the guilty to light.',
			category_id: find_category('Comedy'),
			director: 'Kundan Shah',
			user_id: user_id,
			movie_img: seed_image('jaanebhi')
		},{
			title: '3 Idiots',
			year: '2009',
			description: 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".',
			category_id: find_category('Comedy'),
			director: 'Rajkumar Hirani',
			user_id: user_id,
			movie_img: seed_image('idiots')
		}]

Movie.create!(movies_list)


review_list = [{
		rating: 4,
		comments: "Anand is the most impressive movie by the director Hrishikesh Mukherjee. his other movies like Abhimaan and Milli that also shows his directional sensitivity. Anand is a movie which speaks more than it scripts. It tells us more than its characters narrates the story. The impressive character no doubt is of Rajesh Khannna, but Amitabh is too much impressive. The Anand tells us how a man decided and then spent rest of his short life. A Man who had short time, but he wanted to live too much. for him, not the quantity but quality of life does matter. I recommend to see this movies more than once. And every time u see this movie, u'll end up with more brighter definition of film and life. The movie is too simple to narrate here, and tooo deep to express what i actually think about it.",
		user_id: user_id,
		movie_id: find_movie('Anand')
	},{
		rating: 5,
		comments: "In 1970, Rajesh Khanna was the biggest star and was shooting for multiple movies along with Anand. But it seems he would take some time out from his other schedules would come to Hrishi da and ask him if he could shoot the next scene from Anand. That's how eager and dedicated he was to Anand. Probably he knew that this was the movie that he would be remembered for.
							 The movie narrates like the pages of a diary of one Dr. Bhaskar Bannerjee and his relationship with Anand Sehgal who he treated for cancer. Despite of such a heavy theme the movie is high spirited just like Anand Sehgal who likes to laugh in the face of death. Special mention should be made for attention given to each character in the movie. All the characters are well etched and everyone has given a truly inspired performance.
							 The last sequence must be the most dramatic sequence that I have seen in any movie. Music by Salil Chaudhary and lyrics by Yogesh and Gulzar are apt and wonderful. Definitely one of the best movies made in India.",
		user_id: user_id,
		movie_id: find_movie('Anand')
	},{
		rating: 5,
		comments: "Excellent performances by Rajesh Khanna and Amitabh Bachchan. Both showed maturity and depth in their role. This movie is about a person (rajesh Khanna) who is dying of a dreaded disease but lives every moment of his life to fullest. He entertains others and brings happiness to their life. On the contrary, Amitabh Bachchan is young doctor who is frustrated and angry. Rajesh khanna befriends him and both go well with each other. Amitabh tries hard to cure Rajesh Khanna but in vain. Ultimately Rajesh khanna leaves not before leaving a message of love and happiness. Amitabh Bachchan was at his best. This was the first movie when he was seriously noticed by Bollywood. He exceed expectations. A versatile actor this is one of his many movies where he plays a role of serious, angry young man who hardly smiles. Though it was primarily Rajesh Khanna's movie but it catapulted Amitabh Bachchan into fame ultimately replacing Rajesh Khanna as numero uno. A must watchable for Rajesh Khanna and Amitabh fans.",
		user_id: user_id,
		movie_id: find_movie('Anand')
	},{
		rating: 5,
		comments: "Simply it is a movie which tells the story of an COP & GANGSTER with there own aspects in it,the great ending ,were the entire plot of the story turns and give the audience to give an buzz inside the head thinking of the story even after times of hour watching it.Should say its rare it Indian movies with such drastic twist in the climax which is seen in Hollywood movies.The performance of the two artist R.MADHAVAN & VIJAY SETHUPATHI naming as the title VIKRAM VEDHA is also an great impact to watch as the Tamil movies are best of making mass movies.",
		user_id: user_id,
		movie_id: find_movie('Vikram Vedha')
	}]

Review.create!(review_list)

