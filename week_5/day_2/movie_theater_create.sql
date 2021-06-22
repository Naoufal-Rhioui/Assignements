CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "user_name" VARCHAR,
  "age" INTEGER,
  "email" VARCHAR,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "auditorium_num" INTEGER,
  "movie_id" INTEGER,
  "seat_id" INTEGER,
  "price" INTEGER,
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "auditorium" (
  "auditorium_num" INTEGER,
  "seat_id" INTEGER,
  "capacity" INTEGER,
  "movie_id" INTEGER,
  PRIMARY KEY ("auditorium_num")
);

CREATE TABLE "seat" (
  "seat_id" INTEGER,
  "seat_num" INTEGER,
  "row_num" INTEGER,
  PRIMARY KEY ("seat_id")
);

CREATE TABLE "movie" (
  "movie_id" INTEGER,
  "movie_name" VARCHAR,
  "minutes" TIME,
  "year" DATE,
  "description" VARCHAR,
  PRIMARY KEY ("movie_id")
);

