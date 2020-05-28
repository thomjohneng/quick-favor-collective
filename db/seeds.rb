# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "amandaleahng@gmail.com",
  password: "password",
  first_name: "Amanda",
  last_name: "Ng",
  story: "Passionate about social impact, technology, and storytelling. Currently building Origo Edu, a college admissions consultancy supporting families across SEA. Proud Cal bear and ex-consultant at Kearney.",
  city: "Singapore",
  industry: "Education",
  linkedin: "https://www.linkedin.com/in/amandalng"
  referrer: "Thomas Eng"

  admin: true,
  verified: true
  )

User.create(
  email: "tomeng728@gmail.com",
  password: "password",
  first_name: "Thomas",
  last_name: "Eng",
  story: "Expat living the Indonesian dream. Works to make education more accessible among Indonesian masses. Eats and sleeps often. Ex-consultant at Kearney.",
  city: "Jakarta",
  industry: "Education",
  linkedin: "https://www.linkedin.com/in/thomeng"
  referrer: "Amanda Ng"

  admin: true,
  verified: true
  )
