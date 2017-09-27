# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#require 'faker'
# Fill in genres table

#genres = ['Action', 'Adventure', 'Animation', 'Children', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Fantasy', 'Film-Noir', 'Horror', 'Musical', 'Mystery', 'Romance', 'Sci-Fi','Thriller','War', 'Western', 'Unknown']
#
##query = "INSERT INTO TABLE genres(genre) VALUES ";
#genres.each do |genre|
#     
#    #lt = ActiveRecord::Base.connection.exec_query("INSERT INTO genres (genre) VALUES (#{genre});")
#    genre_t = Genre.create([{genre: genre}])
#    
#end


#puts result.rows
# Fill in movies table
File.open("/home/amarnath/dbms-course-app-project1/movie_text_files/movies.csv").each do |line|
    arr = line.split(",")
    tmdb_id = arr[0].to_i
    title = arr[1]
    release_year = arr[2].to_i
    duration = arr[3].to_i
    poster = arr[4]

    movie_t = Movie.create({tmdb_id: tmdb_id, title: title, release_year: release_year, duration: duration, poster: poster, synopsis: "Not Yet" })
end
