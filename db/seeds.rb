# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
user = User.new
user.email = 'admin@admin.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.role="admin"
user.save!

user = User.new
user.email = 'eleven@eleve.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.role="student"
user.save!

user = User.new
user.email = 'teacher@teacher.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.role="teacher"
user.save!

Formule.delete_all
formule= Formule.new
formule.nom = "Formule 1"
formule.description = "Cette formule permet de suivre les leçon de code à volonté."
formule.nbTickets = 0
formule.puTicket = 40
formule.prix = 400
formule.save!

formule= Formule.new
formule.nom = "Formule 2"
formule.description = "Cette formule permet de suivre les leçon de code à volonté et de participer a un nombre standard de lecons de conduite."
formule.nbTickets = 20
formule.puTicket = 35
formule.prix = 1100
formule.save!

formule= Formule.new
formule.nom = "Formule 3"
formule.description = "Cette formule permet de suivre les leçon de code à volonté et de participer a un nombre plus important de lecons de conduite."
formule.nbTickets = 30
formule.puTicket = 35
formule.prix = 1300
formule.save!

formule= Formule.new
formule.nom = "Formule 4"
formule.description = "Cette formule permet de suivre les leçon de code à volonté et de participer a un nombre trés important de lecons de conduite. De plus les tickets pour les lecons supplementaires sont moins chers."
formule.nbTickets = 45
formule.puTicket = 20
formule.prix = 1500
formule.save!