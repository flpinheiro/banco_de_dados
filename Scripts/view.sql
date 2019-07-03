use unbcineflix;

drop view addresscompany;
drop view AddressPerson;
drop view SoldTickets;
create view AddressCompany as SELECT Country,state, city, Street, number, zipcode, name from addresses WHERE addresses.Discriminator = 'AddressCompany';
create view AddressPerson as SELECT Country,state, city, Street, number, zipcode from addresses WHERE addresses.Discriminator = 'AddressPerson';
create view SoldTickets as select session.id as 'numero sessao', movies.Title as 'Titulo do filme', session.MovieTheaterNumber as 'sala', session.SessionTime as 'dia e hora', ChairCol as 'numero coluna', ChairRow  as 'numero fileira', Value as 'valor' from session, movietheaters, tickets, movies where session.Id = tickets.SessionId and session.AddressCompanyId = movietheaters.AddressCompanyId and movietheaters.MovieTheaterNumber = session.MovieTheaterNumber and session.MovieId = movies.id;
select * from addresscompany;
select * from AddressPerson;
select * from SoldTickets;




