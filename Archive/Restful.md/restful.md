|Actions| URLS| ActiveRecord| SQL | Ruby
|-|-|-|-|-|
Index| /movies | Movie.all | SELECT * FROM movies | Movie.all

Show | /movies/id | Movie.find(id) | SELECT * FROM movies WHERE id = id | Movie.all.detect{ |movie| movie.id = id}

Create | /create | Movie.create(attributes) | INSERT INTO movies (columns) VALUES (values) | Movies.new(attributes)

Delete | /delete | Movie.delete(id) | DELETE FROM movies WHERE id = id | Movie.all.reject{ |movie| movie.id = id}

Update | /update | Movie.update(id, column, value) | UPDATE movies SET column = value WHERE id = id | Movie.all.map {|movie| movie.attributes = attributes if movie.id == id
}
