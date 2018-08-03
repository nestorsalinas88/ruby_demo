require 'sinatra'
require 'movie'
require 'movie_org'

store = MovieInventory.new("movies.yml")

get("/movies") do
  @movies = store.all
  erb :index
end

get("/movies/new") do
  erb :new
end


post("/movies/new") do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
  store.save(@movie)
  redirect '/movies/new'
end

get('/movies/:id') do
  id = params['id'].to_i
  @movie = store.find(id)
  erb :show
end
