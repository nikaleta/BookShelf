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
douglas = Author.create(name: "Douglas Crockford")
curt = Author.create(name: "Curt Stager")
robert = Author.create(name: "Robert C. Martin")

programming = Genre.create(title: "Programming")
coding = Genre.create(title: "Coding")
computer_science = Genre.create(title: "Computer Science")
science = Genre.create(title: "Science")
# Book creation


Book.create(
  title: "JavaScript: The Good Parts",
  publication: 2008,
  user: user1,
  author: douglas,
	genres: [programming, science]
)

Book.create(
  title: "Your Atomic Self",
  publication: 2014,
  user: user1,
  author: curt,
  genres: [science]
 )

Book.create(
  title: "Deep Future",
  publication: 2011,
  user: user1,
  author: curt,
  genres: [science]
)

Book.create(
  title: "Beautiful Code",
  publication: 2007,
  user: user1,
  author: douglas,
  genres: [programming]
)

Book.create(
  title: "The Clean Coder",
  publication: 1926,
  user: user1,
  author: robert,
  genres: [coding]
)

 Book.create(
  title: "Agile Principles, Patterns, and Practices in C# ",
  publication: 2006,
  user: user1,
  author: robert,
  genres: [programming]
)

Book.create(
  title: "UML for Java Programmers",
  publication: 2003,
  user: user1,
  author: robert,
  genres: [computer_science]
)
