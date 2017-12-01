# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserSong.delete_all
Song.delete_all
Genre.delete_all
User.delete_all

5.times do |i|
	genre = Genre.create(name: "genero #{i + 1}")
	5.times do |j|
		Song.create(name: "cancion #{j +1}", duration: rand(100..300), genre: genre)
	end	
end




6.times do |i|
	User.create(name: "Usuario #{i + 1}", email: "usuario#{i}@us#{i}.com", password: "password")
end