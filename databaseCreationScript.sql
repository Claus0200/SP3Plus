-- -----------------------------------------------------
-- Schema chillflix
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chillflix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `chillflix` ;

-- -----------------------------------------------------
-- Table `chillflix`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chillflix`.`movie` (
  `movieID` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(100) NULL DEFAULT 'All',
  `title` VARCHAR(100) NOT NULL,
  `year` VARCHAR(20) NOT NULL,
  `rating` FLOAT NOT NULL,
  PRIMARY KEY (`movieID`),
  UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE);

INSERT INTO movie(title, year,category, rating) VALUES ("The Godfather",1972, "Crime. Drama",9.2); 
INSERT INTO movie(title, year,category, rating) VALUES ("The Shawshank Redemption",1994, "Drama",9.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Schindler's List",1993, "Biography. Drama. History",8.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Raging Bull",1980, "Biography. Drama. Sport",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Casablanca",1942, "Drama. Romance. War",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Citizen Kane",1941, "Drama. Mystery",8.4);
INSERT INTO movie(title, year,category, rating) VALUES ("Gone With The Wind",1939, "Drama. History. Romance",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("The Wizard Of Oz",1939, "Adventure. Family. Fantasy",8);
INSERT INTO movie(title, year,category, rating) VALUES ("One Flew Over The Cuckoo's Nest",1975, "Drama",8.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Lawrence Of Arabia",1962, "Adventure. Biography. Drama",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Vertigo",1958, "Mystery. Romance. Thriller",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Psycho",1960, "Horror. Mystery. Thriller",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("The Godfather part II",1974, "Crime. Drama",9);
INSERT INTO movie(title, year,category, rating) VALUES ("On The Waterfront",1954, "Crime. Drama. Thriller",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Sunset Boulevard",1950, "Drama. Film-Noir",8.4);
INSERT INTO movie(title, year,category, rating) VALUES ("Forrest Gump",1994, "Drama. Romance",8.8);
INSERT INTO movie(title, year,category, rating) VALUES ("The Sound Of Music",1965, "Biography. Drama. Family. Musical",8);
INSERT INTO movie(title, year,category, rating) VALUES ("12 Angry Men",1957, "Crime. Drama",8.9);
INSERT INTO movie(title, year,category, rating) VALUES ("West Side Story",1961, "Crime. Drama",7.6);
INSERT INTO movie(title, year,category, rating) VALUES ("Star Wars",1977, "Action. Adventure. Family",8.6);
INSERT INTO movie(title, year,category, rating) VALUES ("2001 A Space Odyssey",1968, "Adventure. Sci-fi",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("ET",1982, "Family. Sci-fi",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("The Silence Of The Lambs",1991,"Crime. Drama. Thriller",8.6);
INSERT INTO movie(title, year,category, rating) VALUES ("Chinatown",1974, "Drama. Mystery. Thriller",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("The Bridge Over The River Kwai",1957, "Adventure. Drama. War",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Singin' In The Rain",1952, "Comedy. Musical. Romance",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("It's A Wonderful Life",1946, "Drama. Family.Fantasy",8.6);
INSERT INTO movie(title, year,category, rating) VALUES ("Dr. Strangelove Or How I Learned To Stop Worrying And Love The Bomb",1964, "Comedy. War",8.4);
INSERT INTO movie(title, year,category, rating) VALUES ("Some Like It Hot",1959, "Comedy. Romance",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Ben Hur",1959, "Adventure. Drama. History",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("Apocalypse Now",1979, "Drama. War",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Amadeus",1984, "Biography. Drama. History",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Lord Of The Rings - The Return Of The King",2003, "Action. Adventure. Drama",8.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Gladiator",2000, "Action. Adventure. Drama",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Titanic",1997, "Drama. Romance",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("From Here To Eternity",1953, "Drama. Romance. War",7.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Saving Private Ryan",1998, "Drama. War",8.6);
INSERT INTO movie(title, year,category, rating) VALUES ("Unforgiven",1992, "Drama. Western",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Raiders Of The Lost Ark",1981, "Action. Adventure",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Rocky",1976, "Drama. Sport",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("A Streetcar Named Desire",1951, "Drama",8);
INSERT INTO movie(title, year,category, rating) VALUES ("A Philadelphia Story",1940, "Comedy. Romance",8);
INSERT INTO movie(title, year,category, rating) VALUES ("To Kill A Mockingbird",1962, "Crime. Drama",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("An American In Paris",1951, "Drama. Musical. Romance",7.2);
INSERT INTO movie(title, year,category, rating) VALUES ("The Best Years Of Our Lives",1946, "Drama. Romance. War",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("My Fair Lady",1964, "Drama. Family. Musical",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("A Clockwork Orange",1971, "Crime. Drama. Sci-fi",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Doctor Zhivago",1965, "Drama. Romance. War",8);
INSERT INTO movie(title, year,category, rating) VALUES ("The Searchers",1956, "Adventure. Drama. Western",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Jaws",1975, "Adventure. Drama. Thriller",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Patton",1970, "Biography. Drama. War",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Butch Cassidy And The Sundance Kid",1969, "Biography. Crime. Drama",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("The Treasure Of The Sierra Madre",1948, "Adventure. Drama. Western",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("The Good. The Bad And The Ugly",1966, "Western",8.9);
INSERT INTO movie(title, year,category, rating) VALUES ("The Apartment",1960, "Comedy. Drama. Romance",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Platoon",1986, "Drama. War",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("High Noon",1952, "Action. Drama. Thriller",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Braveheart",1995, "Biography. Drama. History",8.4);
INSERT INTO movie(title, year,category, rating) VALUES ("Dances With Wolves",1990, "Adventure. Drama. Western",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Jurassic Park",1993, "Adventure. Sci-fi. Thriller",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("The Exorcist",1973, "Horror",8);
INSERT INTO movie(title, year,category, rating) VALUES ("The Pianist",2002, "Biography. Drama. Music",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Goodfellas",1990, "Crime. Drama",8.7);
INSERT INTO movie(title, year,category, rating) VALUES ("The Deer Hunter",1978, "Drama. War",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("All Quiet On The Western Front",1930, "Drama. War",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("Bonny And Clyde",1967, "Action. Biography. Crime",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("The French Connection",1971, "Action. Crime. Drama",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("City Lights",1931, "Comedy. Drama. Romance",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("It Happened One Night",1934, "Comedy. Romance",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("A Place In The Sun",1951, "Drama. Romance",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("Midnight Cowboy",1969, "Drama",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Mr Smith Goes To Washington",1939, "Comedy. Drama",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Rain Man",1988, "Drama",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Annie Hall",1977, "Comedy. Romance",8);
INSERT INTO movie(title, year,category, rating) VALUES ("Fargo",1996, "Crime. Drama. Thriller",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("Giant",1956, "Drama. Western",7.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Shane",1953, "Drama. Western",7.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Grapes Of Wrath",1940, "Drama. History",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("The Green Mile",1999, "Crime. Drama. Fantasy",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Close Encounters",1977, "Drama. Sci-fi",7.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Nashville",1975, "Comedy. Drama. Music",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("Network",1976, "Drama",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("The Graduate",1967, "Comedy. Drama. Romance",8);
INSERT INTO movie(title, year,category, rating) VALUES ("American Graffiti",1973, "Comedy. Drama",7.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Pulp Fiction",1994, "Crime. Drama",8.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Terms of Endearment",1983, "Comedy. Drama",7.4);
INSERT INTO movie(title, year,category, rating) VALUES ("Good Will Hunting",1997, "Drama. Romance",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("The African Queen",1951, "Adventure. Drama. Romance",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Stagecoach",1939, "Adventure. Western",7.9);
INSERT INTO movie(title, year,category, rating) VALUES ("Mutiny On The Bounty",1935, "Adventure. Biography. Drama",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("The Great Dictator",1940, "Comedy. Drama. War",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("Double Indemnity",1944, "Crime. Drama. Film-Noir",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("The Maltese Falcon",1941, "Film-Noir. Mystery",8.1);
INSERT INTO movie(title, year,category, rating) VALUES ("Wuthering Heights",1939, "Drama. Romance",7.7);
INSERT INTO movie(title, year,category, rating) VALUES ("Taxi Driver",1976, "Crime. Drama",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Rear Window",1954, "Mystery. Thriller",8.5);
INSERT INTO movie(title, year,category, rating) VALUES ("The Third Man",1949, "Film-Noir. Mystery. Thriller",8.2);
INSERT INTO movie(title, year,category, rating) VALUES ("Rebel Without A Cause",1955, "Drama",7.8);
INSERT INTO movie(title, year,category, rating) VALUES ("North By Northwest",1959, "Adventure. Mystery. Thriller",8.3);
INSERT INTO movie(title, year,category, rating) VALUES ("Yankee Doodle Dandy",1942,"Biography. Drama. Musical",7.7);


-- -----------------------------------------------------
-- Table `chillflix`.`serie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chillflix`.`serie` (
  `serieID` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(100) NULL DEFAULT 'All',
  `title` VARCHAR(100) NOT NULL,
  `year` VARCHAR(20) NOT NULL,
  `rating` FLOAT NOT NULL,
  `episode` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`serieID`),
  UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE);
  
  
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Twin Peaks","1990-1991","Crime. Drama. Mystery",8.8," 1-8. 2-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Sopranos","1999-2007","Crime. Drama",9.2," 1-13. 2-13. 3-13. 4-13. 5-13. 6-21");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Game Of Thrones","2011-","Action. Adventure. Drama",9.5," 1-10. 2-10. 3-10. 4-10. 5-10. 6-10. 7-7");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Breaking Bad","2008-2013","Crime. Drama. Thriller",9.5," 1-7. 2-13. 3-13. 4-13. 5-16");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Larry Sanders Show","1992-1998","Comedy",8.3," 1-13. 2-18. 3-17. 4-17. 5-13. 6-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Curb Your Enthusiasm","2000-","Comedy",8.7," 1-10. 2-10. 3-10. 4-10. 5-10. 6-10. 7-10. 8-10. 9-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Lost","2004-2010","Adventure. Drama. Fantasy",8.4," 1-25. 2-24. 3-23. 4-14. 5-17. 6-18");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Louie","2010-2015","Comedy. Drama",8.6," 1-13. 2-13. 3-13. 4-14. 5-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Cheers","1982-1993","Comedy. Drama",7.8," 1-22. 2-22. 3-25. 4-26. 5-26. 6-25. 7-22. 8-26. 9-27. 10-26. 11-28");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Scener ur ett äktenskap","1973","Drama",8.5," 1-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Buffy The Vampire Slayer","1996-2003","Action. Drama. Fantasy",8.2," 1-12. 2-22. 3-22. 4-22. 5-22. 6-22. 7-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Shield","2002-2008","Crime. Drama. Thriller",8.7," 1-13. 2-13. 3-15. 4-13. 5-11. 6-10. 7-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Deadwood","2004-2006","Crime. Drama. History",8.7," 1-12. 2-12. 3-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Marvelous Mrs Maisel","2017-","Comedy. Drama",8.7," 1-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Horace and Pete's","2016","Comedy. Drama",8.6," 1-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Top Of The Lake","2013-","Crime. Drama. Mystery",7.5," 1-7. 2-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Simpsons","1989-","Animation. Comedy",8.7," 1-13. 2-22. 3-24. 4-22. 5-22. 6-25. 7-25. 8-25. 9-25. 10-23. 11-22. 12-21. 13-22. 14-22. 15-22. 16-21. 17-22. 18-22. 19-20. 20-21. 21-23. 22-22. 23-22. 24-22. 25-22. 26-22. 27-22. 28-22. 29-21");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Walking Dead","2010-","Drama. Horror. Sci-fi",8.4," 1-6. 2-13. 3-16. 4-16. 5-16. 6-16. 7-16. 8-16. 9-16");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Wire","2001-2008","Crime. Drama. Thriller",9.3," 1-13. 2-12. 3-12. 4-13. 5-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Welt Am Draht","1973","Crime. Mystery. Sci-fi",7.9," 1-2");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("House Of Cards","2013-2018","Drama",8.9," 1-13. 2-13. 3-13. 4-13. 5-13. 6-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Fargo","2014-","Crime. Drama. Thriller",9.0," 1-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Angel","1999-2004","Action. Drama. Fantasy",8.0," 1-22. 2-22. 3-22. 4-22. 5-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("V","1984-1985","Action. Adventure. Sci-fi",7.3," 1-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Jessica Jones","2015-","Action. Crime. Drama",8.1," 1-13. 2-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Daredevil","2015-","Action. Crime. Drama",8.7," 1-13. 2-13. 3-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Seinfeld","1989-1998","Comedy",8.9," 1-5. 2-12. 3-23. 4-24. 5-22. 6-24. 7-24. 8-22. 9-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Slings And Arrows","2003-2006","Comedy",8.5," 1-6. 2-6. 3-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("I Claudius","1976","Biography. Drama. History",8.9," 1-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Rome","2005-2007","Action. Drama. History",8.8," 1-12. 2-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Ray Donovan","2013-","Crime. Drama",8.3," 1-12. 2-12. 3-12. 4-12. 5-12. 6-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Better Call Saul","2015-","Crime. Drama",8.7," 1-10. 2-10. 3-10. 4-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Honeymooners","1955-1956","Comedy. Family",8.7," 1-39");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Spaced","1999-2001","Action. Comedy",8.6," 1-7. 2-7");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Twilight Zone","1959-1964","Fantasy. Horror. Mystery",9.0," 1-36. 2-29. 3-37. 4-18. 5-36");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Fraiser","1993-2004","Comedy",8.1," 1-24. 2-24. 3-24. 4-24. 5-24. 6-24. 7-24. 8-24. 9-24. 10-24. 11-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Alfred Hitchcock Presents","1955-1962","Crime. Drama. Mystery",8.6," 1-39. 2-39. 3-39. 4-36. 5-38. 6-38. 7-38");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("I Love Lucy","1951-1957","Comedy. Family",8.3," 1-35. 2-31. 3-31. 4-30. 5-26. 6-27");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("24","2001-2010","Action. Crime. Drama",8.4," 1-24. 2-24. 3-24. 4-24. 5-24. 6-24.7-24. 8-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Americans","2013-2018","Crime. Drama. Mystery",8.4," 1-13. 2-13. 3-13. 4-13. 5-13. 6-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Girls","2012-2017","Comedy. Drama",7.3," 1-10. 2-10. 3-12. 4-10. 5-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Mad Men","2007-2015","Drama",8.6," 1-13. 2-13. 3-13. 4-13. 5-13. 6-13. 7-14");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Northern Exposure","1990-1995","Comedy. Drama. Fantasy",8.3," 1-8. 2-7. 3-23. 4-25. 5-24. 6-23");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Star Trek","1966-1969","Action. Adventure. Sci-fi",8.3," 1-29. 2-26. 3-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Big Little Lies","2017","Crime. Drama. Mystery",8.6," 1-7");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Firefly","2002-2003","Adventure. Drama. Sci-fi",9.0," 1-14");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Spartacus","2010-2013","Action. Adventure. Biography",8.5," 1-13. 2-10. 3-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Mr Show With Bob And David","1995-1998","Comedy",8.3," 1-4. 2-6. 3-10. 4-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Homeland","2011-","Crime. Drama. Mystery",8.3," 1-12. 2-12. 3-12. 4-12. 5-12. 6-12. 7-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Show Me A Hero","2015","Drama. History",8.1," 1-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Crisis In Six Scenes","2016","Comedy",6.6," 1-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Batman","1966-1968","Action. Adventure. Comedy",7.5," 1-34. 2-60. 3-26");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Luke Cage","2016-2018","Action. Crime. Drama",7.5," 1-13. 2-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("South Park","1997-","Animation. Comedy",8.7," 1-13. 2-18. 3-17. 4-17. 5-14. 6-17. 7-15. 8-14. 9-14. 10-14. 11-14. 12-14. 13-14. 14-14. 15-14. 16-14. 17-10. 18-10. 19-10. 20-10. 21-10. 22-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Band Of Brothers","2001","Action. Drama. History",9.5," 1-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Married With Children","1986-1997","Comedy",8.1," 1-13. 2-22. 3-22. 4-23. 5-25. 6-26. 7-26. 8-26. 9-26. 10-26. 11-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Family Ties","1982-1989","Comedy. Family",7.2," 1-21. 2-22. 3-22. 4-22. 5-24. 6-24. 7-20");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Lonesome Dove","1989","Adventure. Drama. Western",8.7," 1-4");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Pride And Prejudice","1995","Drama. Romance",8.9," 1-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Flying Blind","1992-1993","Comedy",8.0," 1-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Battlestar Galactica","2004-2009","Action. Adventure. Drama",8.7," 1-13. 2-20. 3-20. 4-20");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Lucky Louie","2006-2007","Comedy",8.0," 1-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Dekalog","1989-1990","Drama",9.1," 1-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("It's Garry Shandling's Show","1986-1990","Comedy",7.6," 1-16. 2-17. 3-20. 4-19");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("On The Air","1992","Comedy",7.4," 1-7");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("All In The Family","1971-1979","Comedy. Drama",7.4," 1-13. 2-24. 3-24. 4-24. 5-23. 6-24. 7-25. 8-24. 9-24");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Entourage","2004-2011","Comedy. Drama",8.5," 1-8. 2-14. 3-20. 4-12. 5-12. 6-12. 7-10. 8-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Ally McBeal","1997-2002","Comedy. Drama. Fantasy",6.8," 1-23. 2-23. 3-21. 4-23. 5-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Strain","2014-2017","Drama. Horror. Thriller",7.4," 1-13. 2-13. 3-10. 4-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Man In The High Castle","2015-","Drama. Sci-fi. Thriller",8.1," 1-10. 2-10. 3-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Sons Of Anarchy","2008-2014","Crime. Drama. Thriller",8.6," 1-13. 2-13. 3-13. 4-14. 5-13. 6-13. 7-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Punisher","2017","Action. Adventure. Crime",8.6," 1-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Boardwalk Empire","2010-2014","Crime. Drama. History",8.6," 1-12. 2-12. 3-12. 4-12. 5-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Damages","2007-2012","Crime. Drama. Mystery",8.1," 1-13. 2-13. 3-13. 4-10. 5-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Banshee","2013-2016","Action. Crime. Drama",8.4," 1-10. 2-10. 3-10. 4-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Planet Earth","2006","Documentary",9.4," 1-11");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Freaks And Geeks","1999-2000","Comedy. Drama",8.8," 1-18");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Way We Live Now","2001","Drama. Romance",7.7," 1-4");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Justified","2010-2015","Action. Crime. Drama",8.6," 1-13. 2-13. 3-13. 4-13. 5-13. 6-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Arrested Development","2003-","Comedy",8.9," 1-22. 2-18. 3-13. 4-22. 5-16");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Stranger Things","2016-","Drama. Fantasy. Horror",8.9," 1-8. 2-9");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Night Court","1984-1992","Comedy",7.7," 1-13. 2-22. 3-22. 4-22. 5-22. 6-22. 7-24. 8-24. 9-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Revenge","2011-2015","Drama. Mystery. Thriller",7.9," 1-22. 2-22. 3-22. 4-23");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Da Ali G Show","2003-2004","Comedy. Talk-show",8.0," 1-6. 2-6. 3-6");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Sex & The City","1998-2004","Comedy. Drama. Romance",7.1," 1-12. 2-18. 3-18. 4-18. 5-8. 6-20");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Tyrant","2014-2016","Action. Drama. Thriller",7.8," 1-10. 2-12. 3-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Billions","2016-","Drama",8.4," 1-12. 2-12. 3-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Shameless","2011-","Comedy. Drama",8.7," 1-12. 2-12. 3-12. 4-12. 5-12. 6-12. 7-12. 8-12. 9-7");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Smallville","2001-2011","Adventure. Drama. Romance",7.5," 1-21. 2-23. 3-22. 4-22. 5-22. 6-22. 7-20. 8-22. 9-21. 19-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Defenders","2017","Action. Adventure. Crime",7.5," 1-8");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("House","2004-2012","Drama. Mystery",8.8,"  1-22. 2-24. 3-24. 4-16. 5-24. 6-21. 7-23. 8-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Fear The Walking Dead","2015-","Drama. Horror. Sci-fi",7.0," 1-6. 2-15. 3-16. 4-16");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("True Blood","2008-2014","Drama. Fantasy. Mystery",7.9," 1-12. 2-12. 3-12. 4-12. 5-12. 6-10. 7-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("GLOW","2017-","Comedy. Drama. Sport",8.2," 1-10. 2-10");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Doctor Thorne","2016","Drama",7.3," 1-3");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("The Civil War","1990","Documentary. History. War",9.1," 1-9");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Person Of Interest","2011-2016","Action. Crime. Drama",8.4," 1-23. 2-22. 3-23. 4-22. 5-13");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Californication","2007-2014","Comedy. Drama",8.3," 1-12. 2-12. 3-12. 4-12. 5-12. 6-12. 7-12");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Three's Company","1976-1984","Comedy",7.6," 1-6. 2-25. 3-22. 4-25. 5-22. 6-28. 7-22. 8-22");
INSERT INTO serie(title, year, category, rating, episode) VALUES ("Dexter","2006-2013","Crime. Drama. Mystery",8.7," 1-12. 2-12. 3-12. 4-12. 5-12. 6-12. 7-12. 8-12");
  

-- -----------------------------------------------------
-- Table `chillflix`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chillflix`.`user` (
  `userID` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `chillflix`.`watched_movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chillflix`.`watched_movie` (
  `userID` INT NOT NULL,
  `movieID` INT NOT NULL,
  UNIQUE KEY `movieuserID` (`userID`,`movieID`),
  KEY `movieID_idx` (`movieID`),
  KEY `userID_idx` (`userID`),
  CONSTRAINT `movieID` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`),
  CONSTRAINT `userIDmovie` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`));

-- -----------------------------------------------------
-- Table `chillflix`.`watched_serie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chillflix`.`watched_serie` (
  `userID` INT NOT NULL,
  `serieID` INT NOT NULL,
  UNIQUE KEY `serieuserID` (`userID`,`serieID`),
  KEY `serieID_idx` (`serieID`),
  KEY `userID_idx` (`userID`),
  CONSTRAINT `serieID` FOREIGN KEY (`serieID`) REFERENCES `serie` (`serieID`),
  CONSTRAINT `userIDserie` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`));