-- Michael Ouatu and Brendan Quigley
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Player CASCADE CONSTRAINTS;
DROP TABLE Position CASCADE CONSTRAINTS;
DROP TABLE LaLakers CASCADE CONSTRAINTS;


CREATE TABLE LaLakers (
  revenue          char(15) not null, 
  arena            varchar2(30) not null,
  rost_player_C    varchar(40) not null, 
  head_Coach_LName varchar(25) not null,
  primary key (head_Coach_LName)
);

CREATE TABLE Position (
  ppos         varchar2(2) not null,
  primary key (ppos)
);

CREATE TABLE Player (
  FirstName    varchar2(40) not null,
  LastName     varchar2(40) not null,
  pos          varchar2(2) not null, 
  height       number(3) not null,
  weight       number(3) not null,
  pssn         number(9),
  birthday     date not null,
  captain      varchar2(40),
  primary key (pssn),
  foreign key (pos) references Position(ppos)
);

--ALTER TABLE Player DROP Primary Key;


CREATE TABLE Staff (
  FirstName   varchar2(40) not null,
  LastName    varchar2(40) not null,
  sJob        varchar(20) not null,
  ssn         number(9) not null,
  bday        date, 
  works_for   varchar(40) not null,
  primary key (ssn),
  foreign key (works_for) references LaLakers(head_Coach_LName)
);


