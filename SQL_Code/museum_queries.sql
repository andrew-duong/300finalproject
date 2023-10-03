/*1. Show all tables and explain how they are related to one another (keys, triggers, etc.)*/
select * from information_schema.tables where table_schema = 'museum';

/*2. A basic retrieval query
A query that prints out basic information for paintings in the museum*/
select a.Title, a.artist, a.year_made, a.art_description, a.origin, a.epoch, a.style, p.paint_type, p.drawn_on
from art_objects as a, painting as p 
where a.ID_Num = p.ID_Num;

/*3. A retrieval query with ordered results
A query that lists the names of all art_objects that are a part of the permanent collection and lists them in order of their price from highest to lowest*/
select a.title, p.cost
from art_objects as a, permanent_collection as p 
where a.ID_Num = p.ID_Num  
ORDER By p.cost DESC;

/*4. A nested retrieval query.
A query that returns the name and id of all sculptures that were created by artists were born since 1800.*/
select a.ID_Num, a.title, a.artist from 
(select a.ID_num, a.title, a.artist from art_objects as a, artist as ar where a.artist = ar.artist_name and year(ar.date_born) >= 1800) as a, sculpture as s 
where a.ID_Num = s.ID_num;

/*5. A retrieval query using joined tables
A query that returns all art pieces that are/were in an exhibition*/
select art_objects.ID_Num, title from art_objects inner join displayed on art_objects.id_num = displayed.id_num;

/*6. An update operation with any necessary triggers*/
CREATE TRIGGER update_painting
BEFORE UPDATE ON art_objects 
FOR EACH ROW
    UPDATE painting
    SET painting.ID_Num = new.ID_Num
    WHERE painting.ID_Num = old.ID_Num;

/*7. A deletion operation with any necessary triggers
For Bonus*/
CREATE TRIGGER delete_painting
BEFORE DELETE ON art_objects 
FOR EACH ROW
  DELETE FROM painting WHERE painting.ID_Num = old.ID_Num;


