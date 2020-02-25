# Test insert queries to populate tables with baseline sample testing data.

# Individual user insertion in application should be performed as transactions in
#   order to ensure atomiticity.

INSERT INTO region (name)
VALUES
(‘Test Region’),
(‘North America’),
(‘South America’),
(‘Asia/Pacific’),
(‘Europe’),
(‘Africa’),
(‘North America - Eastern’),
(‘North America - Central’),
(‘North America - Mountain’),
(‘North America - Pacific’);


INSERT INTO user (type, email, password, createdBy)
VALUES 
('admin','Gudrun.Nero@test.com','Gedrun123!',1),
('admin','Cristine.Hanley@test.com','Cristine123!',1),
('admin','Mario.Labonte@test.com','Mario123!',1),
('admin','Sharolyn.Wiegand@test.com','Sharolyn123!',1),
('admin','Madeleine.Yellowhair@test.com','Madeleine123!',1),
('admin','Diann.Fenwick@test.com','Diann123!',1),
('admin','Arnold.Navarra@test.com','Arnold123!',1),
('admin','Edgar.Waiters@test.com','Edgar123!',1),
('admin','Blanche.Guerrero@test.com','Blanche123!',1),
('admin','Danica.Bizzell@test.com','Danica123!',1),
('manager','Fabian.Coutts@test.com','Fabian123!',1),
('manager','Dedra.Ashbaugh@test.com','Dedra123!',1),
('manager','Charlesetta.Hudak@test.com','Charlesetta123!',1),
('manager','Harry.Pineiro@test.com','Harry123!',1),
('manager','Leatha.Demmer@test.com','Leatha123!',1),
('manager','Elene.Laws@test.com','Elene123!',1),
('manager','Melissa.Boser@test.com','Melissa123!',1),
('manager','Alesha.Olivas@test.com','Alesha123!',1),
('manager','Jonell.Albaugh@test.com','Jonell123!',1),
('manager','Austin.Franz@test.com','Austin123!',1),
('manager','Willy.Hathorn@test.com','Willy123!',1),
('manager','Jada.Hollenbeck@test.com','Jada123!',1),
('manager','Melvin.Wilcher@test.com','Melvin123!',1),
('manager','Leesa.Bettcher@test.com','Leesa123!',1),
('manager','Amos.Wickliffe@test.com','Amos123!',1),
('manager','Gwyn.Abelson@test.com','Gwyn123!',1),
('manager','Leandro.Isham@test.com','Leandro123!',1),
('manager','Hazel.Melgar@test.com','Hazel123!',1),
('manager','Cassie.Feiler@test.com','Cassie123!',1),
('manager','Takako.Randall@test.com','Takako123!',1),
('manager','Junita.Eddy@test.com','Junita123!',1),
('manager','Roland.Malachi@test.com','Roland123!',1),
('manager','Mellisa.Boivin@test.com','Mellisa123!',1),
('manager','Eunice.Dotts@test.com','Eunice123!',1),
('manager','Vinnie.Curl@test.com','Vinnie123!',1),
('manager','Clint.Darlington@test.com','Clint123!',1),
('manager','Anne.Ordway@test.com','Anne123!',1),
('manager','Sylvester.Overbey@test.com','Sylvester123!',1),
('manager','Jacob.Gilleland@test.com','Jacob123!',1),
('manager','Donald.Yelton@test.com','Donald123!',1),
('manager','Leola.Lemoine@test.com','Leola123!',1),
('manager','Patria.Salmon@test.com','Patria123!',1),
('manager','Anisha.Eilers@test.com','Anisha123!',1),
('manager','Ria.Vita@test.com','Ria123!',1),
('manager','Shaunna.Rossiter@test.com','Shaunna123!',1),
('manager','Renea.Dery@test.com','Renea123!',1),
('manager','Margorie.Altizer@test.com','Margorie123!',1),
('manager','Yael.Laroche@test.com','Yael123!',1),
('manager','Velva.Corrao@test.com','Velva123!',1),
('manager','Apolonia.Eppler@test.com','Apolonia123!',1);



INSERT INTO manager (user_id, firstName, lastName)
VALUES
(10,'Danica','Bizzel'),
(11,'Fabian','Coutts'),
(12,'Dedra','Ashbaugh'),
(13,'Charlesetta','Hudak'),
(14,'Harry','Pineiro'),
(15,'Leatha','Demmer'),
(16,'Elene','Laws'),
(17,'Melissa','Boser'),
(18,'Alesha','Olivas'),
(19,'Jonell','Albaugh'),
(20,'Austin','Franz'),
(21,'Willy','Hathorn'),
(22,'Jada','Hollenbeck'),
(23,'Melvin','Wilcher'),
(24,'Leesa','Bettcher'),
(25,'Amos','Wickliffe'),
(26,'Gwyn','Abelson'),
(27,'Leandro','Isham'),
(28,'Hazel','Melgar'),
(29,'Cassie','Feiler'),
(30,'Takako','Randall'),
(31,'Junita','Eddy'),
(32,'Roland','Malachi'),
(33,'Mellisa','Boivin'),
(34,'Eunice','Dotts'),
(35,'Vinnie','Curl'),
(36,'Clint','Darlington'),
(37,'Anne','Ordway'),
(38,'Sylvester','Overbey'),
(39,'Jacob','Gilleland'),
(40,'Donald','Yelton'),
(41,'Leola','Lemoine'),
(42,'Patria','Salmon'),
(43,'Anisha','Eilers'),
(44,'Ria','Vita'),
(45,'Shaunna','Rossiter'),
(46,'Renea','Dery'),
(47,'Margorie','Altizer'),
(48,'Yael','Laroche'),
(49,'Velva','Corrao'),
(50,'Apolonia','Eppler');


INSERT INTO admin (user_id)
VALUES
(0)
(1)
(2)
(3)
(4)
(5)
(6)
(7)
(8)
(9)


INSERT INTO award (region_id, type, recipientName, recipientEmail, createdOn, createdBy)
VALUES
(2,'Employee of the Month','Joe Something','Joe.Something@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 2','Samantha','Samantha.Enlish@test.com',CURRENT_TIMESTAMP,1),
(3,'Award 3','Asia Knox','Asia.Knox@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 4','Dalia Durham','Dalia.Durham@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 5','Jobe Wilcox','Jobe.Wilcox@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 6','Usama Bowman','Usama.Bowman@test.com',CURRENT_TIMESTAMP,1),
(2,'Award 7','Hamza Marks','Hamza.Marks@test.com',CURRENT_TIMESTAMP,1),
(2,'Award 8','Wiktoria Miles','Wiktoria.Miles@test.com',CURRENT_TIMESTAMP,1),
(3,'Award 9','Marjorie Hobbs','Marjorie.Hobbs@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 10','Jonathan Cartwright','Jonathan.Cartwright@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 11','Fiza Atkinson','Fiza.Atkinson@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 12','Jimi English','Jimi.English@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 13','Lucy Rojas','Lucy.Rojas@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 14','Nuha Shepherd','Nuha.Shepherd@test.com',CURRENT_TIMESTAMP,1),
(2,'Award 15','Remy Frazier','Remy.Frazier@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 16','Reyansh Rivera','Reyansh.Rivera@test.com',CURRENT_TIMESTAMP,1),
(2,'Award 17','Brayden Mitchell','Brayden.Mitchell@test.com',CURRENT_TIMESTAMP,1),
(3,'Award 18','Ammaarah Mercer','Ammaarah.Mercer@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 19','Hareem Hicks','Hareem.Hicks@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 20','Oliwia Wynn','Oliwia.Wynn@test.com',CURRENT_TIMESTAMP,1),
(1,'Award 21','Bibi Ellis','Bibi.Ellis@test.com',CURRENT_TIMESTAMP,1),
(3,'Award 22','Ruben Pollard','Ruben.Pollard@test.com',CURRENT_TIMESTAMP,1);
