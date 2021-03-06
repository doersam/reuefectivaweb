# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying'
Participation.destroy_all
User.destroy_all
Team.destroy_all
Organization.destroy_all
puts 'destroyed'

reuefectiva = Organization.new(
  name: "Reuefectiva",
  legal_id: "112 89874 89438",
  contact_email: "dorsam.m@gmail.com"
  )
reuefectiva.save!

mafam = Organization.new(
  name: "Mafam",
  legal_id: "112 89874 89438",
  contact_email: "ilse@gmail.com"
  )
mafam.save!

pulpe = Organization.new(
  name: "Pulperia El barrio",
  legal_id: "110 12160 00001",
  contact_email: "marco12@gmail.com"
  )
pulpe.save!
puts "3 orgs generated"

dev = Team.new(
  name:"Dev Team",
  description:"equipo administrador del sistema",
  organization: reuefectiva
  )
dev.save!



innovacion = Team.new(
  name: "Innovacion Mafam",
  description: "Equipo multidisciplinario dedicado a la innovacion",
  organization: mafam

    )
innovacion.save!

mercadeo = Team.new(
  name: "Mercadeo Mafam",
  description: "Equipo de mercado, nuestro objetivo es ...",
  organization: mafam

    )
mercadeo.save!

puts "two teams for Mafam"

ventas = Team.new(
  name: "Ventas la pulpe",
  description: "Vendedore que le echamos ganas, contacto es marco",
  organization: pulpe

    )
ventas.save!

direccion = Team.new(
  name: "Direccion la Pulperia",
  description: "nuestra vision es covertirnos en la mejor pulpe de San Jose. queremos satisfacer a nuetros clientes mientras desarrollamos buenas relaciones con nuestros proveedores",
  organization: pulpe

    )
direccion.save!
puts "two teams for la pulpe"

md = User.new(
  email: "dorsam.m@gmail.com",
  password: "password",
  admin: true,
  name: "Manfred",
  last_name: "Dorsam"
  )
md.save!
maria = User.new(
  email: "maria@gmail.com",
  password: "password",
  name: "Maria",
  last_name: "Palotes"
  )
maria.save!
carmen = User.new(
  email: "carmen@gmail.com",
  password: "password",
  name: "Carmen",
  last_name: "Rodriguez"
  )
carmen.save!

tita = User.new(
  email: "ilse@gmail.com",
  password: "password",
  admin: false,
  name: "Ilse",
  last_name: "Dorsam"
  )
tita.save!

hector = User.new(
  email: "Hector@gmail.com",
  password: "password",
  name: "Hector",
  last_name: "hoff"
  )
hector.save!
puts "users mafam created"

paco = User.new(
  email: "paco2@gmail.com",
  password: "password",
  name: "Paco",
  last_name: "apellidocool"
  )
paco.save!

marco = User.new(
  email: "marco12@gmail.com",
  password: "password",
  name: "Marco",
  last_name: "Jefejunior"
  )
marco.save!

lucia = User.new(
  email: "Lucia@gmail.com",
  password: "password",
  name: "Lucia",
  last_name: "Montes"
  )
lucia.save!

sonia = User.new(
  email: "Sonia@gmail.com",
  password: "password",
  name: "Sonia",
  last_name: "Esquivel"
  )
sonia.save!

puts "users pulpe created"


participation1 = Participation.new( team: dev, user: md)
  participation1.save!
participation2 = Participation.new( team: innovacion, user: maria)
  participation2.save!
participation3 = Participation.new( team: innovacion, user: carmen)
  participation3.save!
participation4 = Participation.new( team: innovacion, user: tita)
  participation4.save!
participation5 = Participation.new( team: mercadeo, user: hector)
  participation5.save!
participation6 = Participation.new( team: ventas, user: paco)
  participation6.save!
participation7 = Participation.new( team: direccion, user: marco)
  participation7.save!
participation8 = Participation.new( team: ventas, user: lucia)
  participation8.save!
participation9 = Participation.new( team: direccion, user: sonia)
  participation9.save!
participation10 = Participation.new( team: direccion, user: hector)
  participation10.save!

puts "participations complete"
# require 'faker'
# Message.destroy_all
# Match.destroy_all
# Swipe.destroy_all
# Participant.destroy_all
# Event.destroy_all
# Picture.destroy_all
# User.destroy_all



# puts 'Creating fake users'


# alex = User.new(
#   name: "Alex",
#   email: "alex_test@gmail.com",
#   bio: "Hit me up if you also like Trance and Hardstyle!",
#   age: rand(21...30),
#   gender: "Male",
#   preferred_gender: "Both",
#   preferred_match_type: "Friends",
#   role: "user",
#   lower_age_preference: 18,
#   upper_age_preference: 40,
#   password: "password"
#   )
# alex.save!
