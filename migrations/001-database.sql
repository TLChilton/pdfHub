-- Up
CREATE TABLE IF NOT EXISTS users
(
  id INTEGER PRIMARY KEY,
  firstName STRING,
  lastName STRING,
  email STRING,
  password STRING
);

CREATE TABLE IF NOT EXISTS pdfs         
(
  isbn INTEGER PRIMARY KEY,
  title STRING,
  author STRING,
  fileName STRING,
  reviews INTEGER,
  numReviews INTEGER,
  average INTEGER
);

CREATE TABLE IF NOT EXISTS authTokens
(
  token STRING PRIMARY KEY,
  userId INTEGER,
  FOREIGN KEY (userId) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS downloads
(
   id INTEGER PRIMARY KEY,
   userId INTEGER,
   download STRING,
   FOREIGN KEY (userId) REFERENCES users(id)
);

-- pdf tables will be static
INSERT OR IGNORE INTO pdfs (isbn, title, author, fileName, reviews, numReviews, average)
VALUES
  (9780194230032, "Frankenstein", "Mary Shelley", "frankenstein.pdf", 0, 0, 0),
  (082191673, "The Scarlet Letter", "Nathaniel Hawthorne", "The_Scarlet_Letter.pdf", 0, 0, 0),
  (1575210304, "Teach Yourself Java in 21 Days", "Laura Lemay", "LearnJava.pdf", 0, 0, 0),
  (9780262033848, "Introduction to Algorithms, 3rd Edition", "MIT Press", "Algorithms_3rd.pdf", 0, 0, 0),
  (9780133741629, "Ethics for the Information Age, 6th Edition", "Michael Quinn", "ethics_for_the_information_age.pdf", 0, 0, 0),
  (9780133407150, "Fundamentals of Web Development", "Randy Connolly", "Fundamentals_Web_Development.pdf", 0, 0, 0),
  (9781524916992, "Introduction to Programming Languages", "Yinong Chen", "Intro_Programming_Languages.pdf", 0, 0, 0),
  (9780511264016, "Logic in Computer Science", "Michael Ruth", "LogicInCS.pdf", 0, 0, 0),
  (9781118324561, "Probability and Stochastic Processes", "Roy Yates", "Prob_Stochastic_Processes.pdf", 0, 0, 0),
  (9781292096131, "Software Engineering, 10th Edition", "Ian Sommerville", "Software_Engineering.pdf", 0, 0, 0);
  
-- Down
-- DROP TABLE users;
-- DROP TABLE authTokens;