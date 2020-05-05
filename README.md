# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

ERD:

Project Zoo {
  
  Table users {
    id int PK
    name string
    email varchar
    password varchar
  }
  
  Table animals {
    id int PK
    name string
    species_id int 
    habitat int
    fun_fact text 
    image string
    user_id int 
  }
  
  Table species {
    id int PK 
    species_id int
  }
  
  Table habitat {
    id int PK
    habitat_type string 
  }
  }


Ref: "users"."id" < "animals"."user_id"

Ref: "species"."id" < "animals"."species_id"

Ref: "habitat"."id" < "animals"."habitat"