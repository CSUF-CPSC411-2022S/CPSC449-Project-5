PRAGMA foreign_KEYs=ON;
BEGIN TRANSACTION;
CREATE TABLE user( 
    userid INTEGER PRIMARY KEY AUTOINCREMENT, 
    fname TEXT NOT NULL, 
    lname TEXT NOT NULL,
    username VARCHAR(25) NOT NULL, 
    passwrd VARCHAR(20) NOT NULL, 
    UNIQUE(username)
);

CREATE INDEX idx_user ON user(userid, username, passwrd);
COMMIT;
