CREATE TABLE spacex_user (
  idUser INTEGER  NOT NULL   IDENTITY ,
  user_name VARCHAR(100)  NOT NULL  ,
  user_address VARCHAR(255)    ,
  user_photo VARCHAR(255)    ,
  user_cpf VARCHAR(14)  NOT NULL  ,
  user_rg VARCHAR(50)  NOT NULL  ,
  user_whatsapp VARCHAR(20)    ,
  user_login VARCHAR(100)  NOT NULL  ,
  user_password VARCHAR(255)  NOT NULL  ,
  user_level INTEGER  NOT NULL  ,
  user_record TIMESTAMP  NOT NULL  ,
  user_status INTEGER  NOT NULL    ,
PRIMARY KEY(idUser));
GO



CREATE TABLE spacex_client (
  idClient INTEGER  NOT NULL   IDENTITY ,
  cli_first_name VARCHAR(100)  NOT NULL  ,
  cli_last_name VARCHAR(255)    ,
  cli_genre INTEGER    ,
  cli_my_color INTEGER    ,
  cli_photo VARCHAR(255)    ,
  cli_cpf VARCHAR(14)    ,
  cli_rg VARCHAR(20)    ,
  cli_number_phone VARCHAR(14)    ,
  cli_number_smartphone VARCHAR(14)    ,
  cli_number_whatsapp VARCHAR(14)    ,
  cli_login_email VARCHAR(100)  NOT NULL  ,
  cli_password VARCHAR(255)  NOT NULL  ,
  cli_level INTEGER  NOT NULL  ,
  cli_record TIMESTAMP  NOT NULL  ,
  cli_date DATE    ,
  cli_status INTEGER  NOT NULL    ,
PRIMARY KEY(idClient));
GO



CREATE TABLE spacex_logs_user (
  idLogs_user INTEGER  NOT NULL   IDENTITY ,
  fkUser INTEGER    ,
  loguse_type INTEGER    ,
  loguse_record TIMESTAMP    ,
  loguse_ipv4 VARCHAR(32)    ,
  loguse_ipv6 VARCHAR(128)    ,
  loguse_address VARCHAR(255)    ,
  loguse_status INTEGER      ,
PRIMARY KEY(idLogs_user)  ,
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser));
GO


CREATE INDEX spacex_logs_FKIndex1 ON spacex_logs_user (fkUser);
GO

CREATE INDEX IFK_Registra entradas e sa?das ON spacex_logs_user (fkUser);
GO


CREATE TABLE spacex_plans (
  idPlans INTEGER  NOT NULL   IDENTITY ,
  fkUser INTEGER  NOT NULL  ,
  plans_cod INTEGER    ,
  plans_type INTEGER    ,
  plans_price DECIMAL(10,2)    ,
  plans_subscriber INTEGER    ,
  plans_status INTEGER    ,
  plans_record TIMESTAMP      ,
PRIMARY KEY(idPlans)  ,
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser));
GO


CREATE INDEX spacex_plans_FKIndex1 ON spacex_plans (fkUser);
GO

CREATE INDEX IFK_Gerencia planos ON spacex_plans (fkUser);
GO


CREATE TABLE spacex_genre (
  idGenre INTEGER  NOT NULL   IDENTITY ,
  fkUser INTEGER  NOT NULL  ,
  genre_name VARCHAR(100)  NOT NULL  ,
  genre_status INTEGER  NOT NULL    ,
PRIMARY KEY(idGenre)  ,
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser));
GO


CREATE INDEX store_category_FKIndex1 ON spacex_genre (fkUser);
GO

CREATE INDEX IFK_Registra g?nero dos filmes ON spacex_genre (fkUser);
GO


CREATE TABLE spacex_address (
  idAddress INTEGER  NOT NULL   IDENTITY ,
  fkClient INTEGER  NOT NULL  ,
  address_type VARCHAR(50)    ,
  address_zipcode VARCHAR(14)    ,
  address_street VARCHAR(100)    ,
  address_number VARCHAR(50)    ,
  address_district VARCHAR(100)    ,
  address_city VARCHAR(100)    ,
  addres_state CHAR(2)    ,
  address_record TIMESTAMP    ,
  address_status INTEGER      ,
PRIMARY KEY(idAddress)  ,
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE CASCADE
      ON UPDATE CASCADE);
GO


CREATE INDEX spacex_address_FKIndex1 ON spacex_address (fkClient);
GO

CREATE INDEX IFK_Possou um ou v?rios endere ON spacex_address (fkClient);
GO


CREATE TABLE spacex_logs_cli (
  idLogs_cli INTEGER  NOT NULL   IDENTITY ,
  fkClient INTEGER    ,
  logcli_type INTEGER    ,
  logcli_record TIMESTAMP    ,
  logcli_ipv4 VARCHAR(32)    ,
  logcli_ipv6 VARCHAR(128)    ,
  logcli_address VARCHAR(255)    ,
  logcli_status INTEGER      ,
PRIMARY KEY(idLogs_cli)  ,
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient));
GO


CREATE INDEX spacex_logs_cli_FKIndex1 ON spacex_logs_cli (fkClient);
GO

CREATE INDEX IFK_Registra entradas e sa?das ON spacex_logs_cli (fkClient);
GO


CREATE TABLE spacex_signed (
  idSigned INTEGER  NOT NULL   IDENTITY ,
  fkPlans INTEGER  NOT NULL  ,
  fkClient INTEGER  NOT NULL  ,
  signed_cpf INTEGER  NOT NULL  ,
  signed_email VARCHAR(100)  NOT NULL  ,
  signed_record TIMESTAMP  NOT NULL  ,
  signed_status INTEGER  NOT NULL  ,
  signed_confirmation INTEGER      ,
PRIMARY KEY(idSigned)    ,
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(fkPlans)
    REFERENCES spacex_plans(idPlans)
      ON UPDATE CASCADE);
GO


CREATE INDEX spacex_signed_FKIndex1 ON spacex_signed (fkClient);
GO
CREATE INDEX spacex_signed_FKIndex2 ON spacex_signed (fkPlans);
GO

CREATE INDEX IFK_Assina um ou v?rios planos ON spacex_signed (fkClient);
GO
CREATE INDEX IFK_Planos dispon?veis para as ON spacex_signed (fkPlans);
GO


CREATE TABLE spacex_movie (
  idMovie INTEGER  NOT NULL   IDENTITY ,
  fkPlans INTEGER  NOT NULL  ,
  fkUser INTEGER  NOT NULL  ,
  fkGenre INTEGER  NOT NULL  ,
  movie_type INTEGER    ,
  movie_name VARCHAR(100)    ,
  movie_image TEXT    ,
  movie_description TEXT    ,
  movie_age INTEGER    ,
  movie_cassification INTEGER    ,
  movie_season INTEGER    ,
  movie_episode INTEGER    ,
  movie_status INTEGER  NOT NULL  ,
  movie_record TIMESTAMP  NOT NULL    ,
PRIMARY KEY(idMovie)      ,
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser),
  FOREIGN KEY(fkGenre)
    REFERENCES spacex_genre(idGenre),
  FOREIGN KEY(fkPlans)
    REFERENCES spacex_plans(idPlans));
GO


CREATE INDEX spacex_movie_FKIndex1 ON spacex_movie (fkUser);
GO
CREATE INDEX spacex_movie_FKIndex2 ON spacex_movie (fkGenre);
GO
CREATE INDEX spacex_movie_FKIndex3 ON spacex_movie (fkPlans);
GO

CREATE INDEX IFK_Registra um filme ou s?rie ON spacex_movie (fkUser);
GO
CREATE INDEX IFK_Pertence a um g?nero de fi ON spacex_movie (fkGenre);
GO
CREATE INDEX IFK_Possui um plano ON spacex_movie (fkPlans);
GO


CREATE TABLE spacex_payment (
  idPayment INTEGER  NOT NULL   IDENTITY ,
  fkClient INTEGER  NOT NULL  ,
  fkUser INTEGER  NOT NULL  ,
  fkSigned INTEGER  NOT NULL  ,
  payment_price DECIMAL(10,2)  NOT NULL  ,
  payment_discount DECIMAL(10,2)    ,
  payment_date TIMESTAMP    ,
  payment_duedate DATE  NOT NULL  ,
  payment_type INTEGER  NOT NULL  ,
  payment_status INTEGER  NOT NULL    ,
PRIMARY KEY(idPayment)      ,
  FOREIGN KEY(fkUser)
    REFERENCES spacex_user(idUser),
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient),
  FOREIGN KEY(fkSigned)
    REFERENCES spacex_signed(idSigned));
GO


CREATE INDEX spacex_payment_FKIndex1 ON spacex_payment (fkUser);
GO
CREATE INDEX spacex_payment_FKIndex2 ON spacex_payment (fkClient);
GO
CREATE INDEX spacex_payment_FKIndex3 ON spacex_payment (fkSigned);
GO

CREATE INDEX IFK_Gerencia pagamentos ON spacex_payment (fkUser);
GO
CREATE INDEX IFK_Faz um pagamento ou v?rios ON spacex_payment (fkClient);
GO
CREATE INDEX IFK_Pagar Assinatura ON spacex_payment (fkSigned);
GO


CREATE TABLE spacex_views (
  idViews INTEGER  NOT NULL   IDENTITY ,
  fkMovie INTEGER  NOT NULL  ,
  fkClient INTEGER  NOT NULL  ,
  view_record TIMESTAMP  NOT NULL  ,
  view_seasion INTEGER  NOT NULL  ,
  view_episode INTEGER  NOT NULL  ,
  view_full INTEGER   DEFAULT 0 ,
  view_status INTEGER  NOT NULL    ,
PRIMARY KEY(idViews)    ,
  FOREIGN KEY(fkMovie)
    REFERENCES spacex_movie(idMovie),
  FOREIGN KEY(fkClient)
    REFERENCES spacex_client(idClient));
GO


CREATE INDEX spacex_views_FKIndex1 ON spacex_views (fkMovie);
GO
CREATE INDEX spacex_views_FKIndex2 ON spacex_views (fkClient);
GO

CREATE INDEX IFK_Registra visualiza??o de s ON spacex_views (fkMovie);
GO
CREATE INDEX IFK_Assiste um ou v?rios episo ON spacex_views (fkClient);
GO



