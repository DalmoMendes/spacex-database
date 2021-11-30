CREATE TABLE spacex_user (
  idUser INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  user_name VARCHAR(100)  NOT NULL  ,
  user_address VARCHAR(255)  NULL  ,
  user_photo VARCHAR(255)  NULL  ,
  user_cpf VARCHAR(14)  NOT NULL  ,
  user_rg VARCHAR(50)  NOT NULL  ,
  user_whatsapp VARCHAR(20)  NULL  ,
  user_login VARCHAR(100)  NOT NULL  ,
  user_password VARCHAR(255)  NOT NULL  ,
  user_level INTEGER UNSIGNED  NOT NULL  ,
  user_record TIMESTAMP  NOT NULL  ,
  user_status INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idUser));


CREATE TABLE spacex_client (
  idClient INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  cli_first_name VARCHAR(100)  NOT NULL  ,
  cli_last_name VARCHAR(255)  NULL  ,
  cli_genre INTEGER  NULL  ,
  cli_my_color INTEGER  NULL  ,
  cli_photo VARCHAR(255)  NULL  ,
  cli_cpf VARCHAR(14)  NULL  ,
  cli_rg VARCHAR(20)  NULL  ,
  cli_number_phone VARCHAR(14)  NULL  ,
  cli_number_smartphone VARCHAR(14)  NULL  ,
  cli_number_whatsapp VARCHAR(14)  NULL  ,
  cli_login_email VARCHAR(100)  NOT NULL  ,
  cli_password VARCHAR(255)  NOT NULL  ,
  cli_level INTEGER UNSIGNED  NOT NULL  ,
  cli_record TIMESTAMP  NOT NULL  ,
  cli_date DATE  NULL  ,
  cli_status INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idClient));


CREATE TABLE spacex_logs_user (
  idLogs_user INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkUser INTEGER UNSIGNED  NULL  ,
  loguse_type INTEGER  NULL  ,
  loguse_record TIMESTAMP  NULL  ,
  loguse_ipv4 VARCHAR(32)  NULL  ,
  loguse_ipv6 VARCHAR(128)  NULL  ,
  loguse_address VARCHAR(255)  NULL  ,
  loguse_status INTEGER  NULL    ,
PRIMARY KEY(idLogs_user)  ,
INDEX spacex_logs_FKIndex1(fkUser),
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_plans (
  idPlans INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkUser INTEGER UNSIGNED  NOT NULL  ,
  plans_cod INTEGER UNSIGNED  NULL  ,
  plans_type INTEGER UNSIGNED  NULL  ,
  plans_price DECIMAL(10,2)  NULL  ,
  plans_subscriber INTEGER UNSIGNED  NULL  ,
  plans_status INTEGER UNSIGNED  NULL  ,
  plans_record TIMESTAMP  NULL    ,
PRIMARY KEY(idPlans)  ,
INDEX spacex_plans_FKIndex1(fkUser),
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_genre (
  idGenre INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkUser INTEGER UNSIGNED  NOT NULL  ,
  genre_name VARCHAR(100)  NOT NULL  ,
  genre_status INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idGenre)  ,
INDEX store_category_FKIndex1(fkUser),
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_address (
  idAddress INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkClient INTEGER UNSIGNED  NOT NULL  ,
  address_type VARCHAR(50)  NULL  ,
  address_zipcode VARCHAR(14)  NULL  ,
  address_street VARCHAR(100)  NULL  ,
  address_number VARCHAR(50)  NULL  ,
  address_district VARCHAR(100)  NULL  ,
  address_city VARCHAR(100)  NULL  ,
  addres_state CHAR(2)  NULL  ,
  address_record TIMESTAMP  NULL  ,
  address_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idAddress)  ,
INDEX spacex_address_FKIndex1(fkClient),
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE CASCADE
      ON UPDATE CASCADE);


CREATE TABLE spacex_logs_cli (
  idLogs_cli INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkClient INTEGER UNSIGNED  NULL  ,
  logcli_type INTEGER UNSIGNED  NULL  ,
  logcli_record TIMESTAMP  NULL  ,
  logcli_ipv4 VARCHAR(32)  NULL  ,
  logcli_ipv6 VARCHAR(128)  NULL  ,
  logcli_address VARCHAR(255)  NULL  ,
  logcli_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idLogs_cli)  ,
INDEX spacex_logs_cli_FKIndex1(fkClient),
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_signed (
  idSigned INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkPlans INTEGER UNSIGNED  NOT NULL  ,
  fkClient INTEGER UNSIGNED  NOT NULL  ,
  signed_cpf INTEGER UNSIGNED  NOT NULL  ,
  signed_email VARCHAR(100)  NOT NULL  ,
  signed_record TIMESTAMP  NOT NULL  ,
  signed_status INTEGER UNSIGNED  NOT NULL  ,
  signed_confirmation INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idSigned)  ,
INDEX spacex_signed_FKIndex1(fkClient)  ,
INDEX spacex_signed_FKIndex2(fkPlans),
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(fkPlans)
    REFERENCES spacex_plans(idPlans)
      ON DELETE NO ACTION
      ON UPDATE CASCADE);


CREATE TABLE spacex_movie (
  idMovie INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkPlans INTEGER UNSIGNED  NOT NULL  ,
  fkUser INTEGER UNSIGNED  NOT NULL  ,
  fkGenre INTEGER UNSIGNED  NOT NULL  ,
  movie_type INTEGER UNSIGNED  NULL  ,
  movie_name VARCHAR(100)  NULL  ,
  movie_image TEXT  NULL  ,
  movie_description TEXT  NULL  ,
  movie_age INTEGER UNSIGNED  NULL  ,
  movie_cassification INTEGER UNSIGNED  NULL  ,
  movie_season INTEGER UNSIGNED  NULL  ,
  movie_episode INTEGER UNSIGNED  NULL  ,
  movie_status INTEGER UNSIGNED  NOT NULL  ,
  movie_record TIMESTAMP  NOT NULL    ,
PRIMARY KEY(idMovie)  ,
INDEX spacex_movie_FKIndex1(fkUser)  ,
INDEX spacex_movie_FKIndex2(fkGenre)  ,
INDEX spacex_movie_FKIndex3(fkPlans),
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(fkGenre)
    REFERENCES spacex_genre(idGenre)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(fkPlans)
    REFERENCES spacex_plans(idPlans)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_payment (
  idPayment INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkClient INTEGER UNSIGNED  NOT NULL  ,
  fkUser INTEGER UNSIGNED  NOT NULL  ,
  fkSigned INTEGER UNSIGNED  NOT NULL  ,
  payment_price DECIMAL(10,2)  NOT NULL  ,
  payment_discount DECIMAL(10,2)  NULL  ,
  payment_date TIMESTAMP  NULL  ,
  payment_duedate DATE  NOT NULL  ,
  payment_type INTEGER UNSIGNED  NOT NULL  ,
  payment_status INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idPayment)  ,
INDEX spacex_payment_FKIndex1(fkUser)  ,
INDEX spacex_payment_FKIndex2(fkClient)  ,
INDEX spacex_payment_FKIndex3(fkSigned),
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(fkSigned)
    REFERENCES spacex_signed(idSigned)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE TABLE spacex_views (
  idViews INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  fkMovie INTEGER UNSIGNED  NOT NULL  ,
  fkClient INTEGER UNSIGNED  NOT NULL  ,
  view_record TIMESTAMP  NOT NULL  ,
  view_seasion INTEGER UNSIGNED  NOT NULL  ,
  view_episode INTEGER UNSIGNED  NOT NULL  ,
  view_full INTEGER  NULL DEFAULT 0 ,
  view_status INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idViews)  ,
INDEX spacex_views_FKIndex1(fkMovie)  ,
INDEX spacex_views_FKIndex2(fkClient),
  FOREIGN KEY(fkMovie)
    REFERENCES spacex_movie(idMovie)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



