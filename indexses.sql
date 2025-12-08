
CREATE TABLE Users_TG(
	id INT IDENTITY(1,1) PRIMARY KEY,
	username NVARCHAR(100) NOT NULL,
	tag_name NVARCHAR(100) UNIQUE NOT NULL,
	descr TEXT,
	created_at DATETIME DEFAULT SYSDATETIME()
);


INSERT INTO Users_TG (username ,tag_name,descr) VALUES
('usersec','@user1', 'from Russia'),
('ryan','@bitcoin_bandits', 'from Uzbekistan')


select * from  Users_TG 

CREATE INDEX TWOCOLS_USER_TG
ON Users_TG(username , tag_name)

CREATE INDEX INDEX_TG_USER
ON Users_TG(username)
