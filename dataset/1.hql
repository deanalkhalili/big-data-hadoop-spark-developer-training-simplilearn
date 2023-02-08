CREATE TABLE IF NOT EXISTS naveen_simplilearn.users(
user_id INT COMMENT 'holds unique user id',
first_name STRING,
last_name STRING,
gender STRING,
designation STRING,
city STRING,
country STRING,
dob DATE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TextFile
tblproperties(
"skip.header.line.count"="1",
"skip.footer.line.count"="1"
);


LOAD DATA INPATH '/user/naveenpntrainergmail/users1.dat' INTO TABLE naveen_simplilearn.users; 

