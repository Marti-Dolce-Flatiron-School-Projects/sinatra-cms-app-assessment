json.extract! movie, :id, :title, :URL, :movieType, :rating, :minutes, :year, :genres, :votes, :released, :directors, :createdTime, :created_at, :updated_at
json.url movie_url(movie, format: :json)
