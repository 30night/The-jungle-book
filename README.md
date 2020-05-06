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
    habitat text
    fun_fact text 
    image string
    user_id int 
  }
  
  Table species {
    id int PK 
    species_id int
  }
  
  <!-- // Table habitat {
  //   id int PK
  //   habitat_type string 
  // }
  } -->


Ref: "users"."id" < "animals"."user_id"

Ref: "species"."id" < "animals"."species_id"

// Ref: "habitat"."id" < "animals"."habitat"