use ad_lister_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED UNIQUE,
    email VARCHAR(50) UNIQUE,
    user_password VARCHAR(50),
    PRIMARY KEY (id)
);
describe users;


CREATE TABLE ads (
    ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_code INT UNSIGNED UNIQUE,
    ad_content text,
    PRIMARY KEY (ad_id)
);
describe ads;


CREATE TABLE IF NOT EXISTS categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cat_code INT UNSIGNED UNIQUE,
    descriptor VARCHAR(50),
    PRIMARY KEY (id)
);
describe categories;


CREATE TABLE IF NOT EXISTS ad_categories (
    ad_code INT UNSIGNED NOT NULL,
    cat_code INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_code) REFERENCES ads (ad_code),
    FOREIGN KEY (cat_code) REFERENCES categories (cat_code)
);
describe ad_categories;


CREATE TABLE ad_authors (
    ad_code INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_code) REFERENCES ads(ad_code),
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
describe ad_authors;


-- data seeder
 INSERT INTO users (user_id, email)
 VALUES (1001, 'jim@example.com'),
 (1002, 'jon@example.com'),
 (1003, 'tim@exmaple.com');

 INSERT INTO ads (ad_code)
 VALUES (2001), (2002), (2003), (2004), (2005);


 INSERT INTO categories (cat_code, descriptor)
 VALUES (101, 'for sale'),
 (102, 'jobs'),
 (103, 'services'),
 (104, 'events'),
 (105, 'location');


 INSERT INTO ad_categories (ad_code, cat_code)
 VALUES (2005, 102),
 (2005, 104),
 (2004, 105),
 (2004, 104),
 (2003, 102),
 (2002, 101),
 (2001, 101);

 INSERT INTO ad_authors (ad_code, user_id)
 VALUES (2001, 1003),
 (2002, 1002),
 (2003, 1003),
 (2004, 1003),
 (2005, 1001);


-- Given ad, get user's email address
SELECT email, ad_code from users u
JOIN ad_authors aa on u.user_id = aa.user_id where ad_code = 2001;

-- Given ad, get categories to which it belongs
select ad_code from ad_categories ac
JOIN categories c on c.cat_code = ac.cat_code
where c.descriptor = 'events';

-- Given category, show ad reference #
select c.descriptor, a.ad_code from ads a
JOIN ad_categories ac on ac.ad_code = a.ad_code
JOIN categories c on c.cat_code = ac.cat_code
where ac.cat_code = 104;


-- Given user show ads posted

select u.email, a.ad_code from ads a
JOIN ad_authors aa ON aa.ad_code = a.ad_code
JOIN users u ON u.user_id = aa.user_id
WHERE u.user_id = 1003;




