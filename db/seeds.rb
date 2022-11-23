# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

3.times do
  wig = Wig.new(wig_type: "Curly", color: "Brown", name: "A Wig", description: "My wig", price: 10)
  file = URI.open('https://res.cloudinary.com/dxtsuiudu/image/upload/v1669215465/development/a1li5oedexkrxdi9fbcx7dal2ui1.jpg')
  wig.photos.attach(io: file, filename: "", content_type: 'image/jpg')
  wig.save!
end
