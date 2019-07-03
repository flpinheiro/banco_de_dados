use unbcineflix;
SELECT * FROM movies, ratings, genremovies, genres where ratingid = ratings.id and movies.id = genremovies.movieid and genremovies.genreid = genres.id;
SELECT * from movies, artistmovies, artists where Movies.id = artistmovies.MovieId and artistmovies.ArtistId = artists.Id;
select * from movietheaters, addresses,companies where addresses.Id = movietheaters.AddressCompanyId and addresses.CompanyId = companies.Id and addresses.Discriminator = 'AddressCompany';
select * from session, movietheaters, tickets where session.Id = tickets.SessionId and session.AddressCompanyId = movietheaters.AddressCompanyId and movietheaters.MovieTheaterNumber = session.MovieTheaterNumber;
select * from people, addresses,phones where people.id = addresses.PersonId and people.id = phones.PersonId and addresses.Discriminator = 'AddressPerson';