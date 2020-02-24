# Test insert queries to populate tables with baseline sample testing data.

# Individual user insertion in application should be performed as transactions in
#   order to ensure atomiticity.

INSERT INTO userType (description)
VALUES
(‘admin’),
(‘manager’);

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


INSERT INTO user (firstName, lastName, email, userTypeID, password, createdOn, createdBy, timestamp)
VALUES 
('Gudrun','Nero','Gudrun.Nero@test.com',2,'Gudrun123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Cristine','Hanley','Cristine.Hanley@test.com',2,'Cristine123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Mario','Labonte','Mario.Labonte@test.com',2,'Mario123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Sharolyn','Wiegand','Sharolyn.Wiegand@test.com',2,'Sharolyn123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Madeleine','Yellowhair','Madeleine.Yellowhair@test.com',2,'Madeleine123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Diann','Fenwick','Diann.Fenwick@test.com',2,'Diann123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Arnold','Navarra','Arnold.Navarra@test.com',2,'Arnold123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Edgar','Waiters','Edgar.Waiters@test.com',2,'Edgar123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Blanche','Guerrero','Blanche.Guerrero@test.com',2,'Blanche123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Danica','Bizzell','Danica.Bizzell@test.com',2,'Danica123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Fabian','Coutts','Fabian.Coutts@test.com',2,'Fabian123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Dedra','Ashbaugh','Dedra.Ashbaugh@test.com',2,'Dedra123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Charlesetta','Hudak','Charlesetta.Hudak@test.com',2,'Charlesetta123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Harry','Pineiro','Harry.Pineiro@test.com',2,'Harry123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Leatha','Demmer','Leatha.Demmer@test.com',2,'Leatha123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Elene','Laws','Elene.Laws@test.com',2,'Elene123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Melissa','Boser','Melissa.Boser@test.com',2,'Melissa123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Alesha','Olivas','Alesha.Olivas@test.com',2,'Alesha123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Jonell','Albaugh','Jonell.Albaugh@test.com',2,'Jonell123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Austin','Franz','Austin.Franz@test.com',2,'Austin123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Willy','Hathorn','Willy.Hathorn@test.com',2,'Willy123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Jada','Hollenbeck','Jada.Hollenbeck@test.com',2,'Jada123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Melvin','Wilcher','Melvin.Wilcher@test.com',2,'Melvin123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Leesa','Bettcher','Leesa.Bettcher@test.com',2,'Leesa123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Amos','Wickliffe','Amos.Wickliffe@test.com',2,'Amos123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Gwyn','Abelson','Gwyn.Abelson@test.com',2,'Gwyn123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Leandro','Isham','Leandro.Isham@test.com',2,'Leandro123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Hazel','Melgar','Hazel.Melgar@test.com',2,'Hazel123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Cassie','Feiler','Cassie.Feiler@test.com',2,'Cassie123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Takako','Randall','Takako.Randall@test.com',2,'Takako123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP),
('Junita','Eddy','Junita.Eddy@test.com',2,'Junita123@',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP);


INSERT INTO award (regionID, type, recipientName, recipientEmail, timestamp, creatorID)
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
