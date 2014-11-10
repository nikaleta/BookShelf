# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User creation

user1 = User.create(email: "nicoleta@gmail.com", password: "1234", role: "admin")

# Author creation



@author1 = Author.create(name: "Douglas Crockford")

@author2 = Author.create(name: "Curt Stager")

@author3 = Author.create(name: "Robert C. Martin")

# Book creation

Book.create(

    title: "JavaScript: The Good Parts",

    publication: 2008,

    user: user1,

    author: @author1,


		genres: [Genre.create(title: "Programming Languages")]

)

Book.create(

     title: "Your Atomic Self",

     publication: 2014,

     user: user1,

     author: @author2,

     genres: [Genre.create(title: "Science")]

 )

Book.create(

    title: "Deep Future",

    publication: 2011,

    user: user1,

    author: @author2,

    genres: [Genre.create(title: "Science, Non Fiction, Natural History")]

)

Book.create(

    title: "Beautiful Code",

    publication: 2007,

    user: user1,

    author: @author1,

    genres: [Genre.create(title: "Programming, Science")]

)

Book.create(

    title: "The Clean Coder",

    publication: 1926,

    user: user1,

    author: @author3,

    genres: [Genre.create(title: "Coding")]

)

 Book.create(

     title: "Agile Principles, Patterns, and Practices in C# ",

    publication: 2006,

    user: user1,

    author: @author3,

    genres: [Genre.create(title: "Programming")]

)

Book.create(

    title: "UML for Java Programmers",

    publication: 2003,

    user: user1,

    author: @author3,

    genres: [Genre.create(title: "Computer Science")]

)
