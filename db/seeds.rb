Apply.destroy_all
MissionSkill.destroy_all
Mission.destroy_all
Skill.destroy_all
Project.destroy_all
Company.destroy_all
User.destroy_all

print '///Creating 1 Bootcamper...///'
phil = User.create!(
  first_name: "Philippe",
  last_name: "Despreaux",
  phone_number: "06 75 84 96 75",
  email: "bootcamper@bootcampers.co",
  password: "bootcamper",
  role: 0,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/philippe_kuh8vu.jpg"
  )
print "👶 "
print '///Created 1 Bootcamper...///'

print '///Creating 1 Leader...///'
samia = User.create!(
  first_name: "Samia",
  last_name: "Dahmouni",
  phone_number: "07 85 41 65 92",
  email: "samia@bootcampers.co",
  password: "samiad",
  role: 1,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511957335/IMG_0978_nsbbpb.jpg"
  )
print "👶 "
print '///Created 1 Leader///'

print '///Creating 5 Clients...///'
valentin = User.create!(
  first_name: "Valentin",
  last_name: "Ferron",
  phone_number: "06 84 96 71 52",
  email: "valentin@company.co",
  password: "company",
  role: 2,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/valentin_mmqlj2.jpg"
  )
print "👶 "

alex = User.create!(
  first_name: "Alexandre",
  last_name: "Boyer",
  phone_number: "06 84 71 54 85",
  email: "alexandre@garage.fr",
  password: "alexandre",
  role: 2,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512050824/alex_rmq5j7.jpg"
  )
print "👶 "

hugues = User.create!(
  first_name: "Hugues",
  last_name: "Tonnet",
  phone_number: "06 83 84 75 15",
  email: "hugues@flower.fr",
  password: "hugueto",
  role: 2,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512050824/hugues_gimwso.jpg"
  )
print "👶 "

louis = User.create!(
  first_name: "Louis",
  last_name: "Mathé",
  phone_number: "07 54 98 35 15",
  email: "louis@coop.fr",
  password: "louismathe",
  role: 2,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512050824/louis_xy38vd.png"
  )
print "👶 "

reka = User.create!(
  first_name: "Reka",
  last_name: "Kulinyi",
  phone_number: "06 75 84 99 12",
  email: "reka@rekachef.co",
  password: "rekakulinyi",
  role: 2,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512050824/reka_m1r082.jpg"
  )
print "👶 "
print '///Created 5 Client///'
print "///Users created///"

print '///Creating 5 Companies...///'
yoga = Company.create!(
  name: "Yoga & Co",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 123 132 13205",
  activity_code: "553A",
  vat_number: "123456789TVA",
  website: "www.yoga.fr",
  user: valentin,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512056110/meditation_udxtaa.png"
  )
print "📅 "

cars = Company.create!(
  name: "Le Garage",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 333 587 13205",
  activity_code: "527A",
  vat_number: "123422555TVA",
  website: "www.garage.fr",
  user: alex,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512051951/car_idh1wx.png"
  )
print "📅 "

flower = Company.create!(
  name: "Hugues Flower",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 333 999 13205",
  activity_code: "555A",
  vat_number: "12342265TVA",
  website: "www.flower.fr",
  user: hugues,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512051912/rose_vev0sk.png"
  )
print "📅 "

coop = Company.create!(
  name: "Louis Coop",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 333 989 13205",
  activity_code: "533A",
  vat_number: "12346665TVA",
  website: "www.coop.fr",
  user: louis,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512051912/watermelon_ckavm5.png"
  )
print "📅 "

resto = Company.create!(
  name: "Reka Chef",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 999 989 13205",
  activity_code: "533B",
  vat_number: "12999665TVA",
  website: "www.rekachef.fr",
  user: reka,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1512051912/food_qmiljf.png"
  )
print "📅 "
print '///Created 5 Companies///'
print "///Created Company///"

print "///Creating 3 Skills...///"
javascript = Skill.create!(name: "js", color: "#75A623")
rails = Skill.create!(name: "rails", color: '#D0021B')
html_css = Skill.create!(name: "html/css", color: '#709EF2')
print "///Created Skills///"

print '///Creating 4 Projects...///'

print '///Creating Project request for reka...///'
Project.create!(
  company: resto,
  request_title: "Création d'une application mobile",
  request_description:"Je voudrais une application pour partager les recettes du restaurant",
  budget: 10000,
  request_delivery_at: DateTime.now + 2.month,
  )
print "Project request created "

print '///Creating Project scoped for Louis with 1 mission...///'
coopmob = Project.create!(
  company: coop,
  user: samia,
  request_title: "Création d'une application mobile",
  request_description:"Application pour partager les fruits et légumes de saison",
  budget: 10000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une application mobile",
  description: "Partage d'un calendrier de fruits et légumes de saison",
  category: "Application Mobile",
  price_cents: 6000000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  )
print "Project scoped created "

print "Creating 1 mission project scoped "
backcoopmob = Mission.create!(
  project: coopmob,
  title: "Back App Mobile",
  description: "Conception du front end en fonction des specs, de la charte et des maquettes graphiques",
  skills: [rails],
  price: 30000
  )
print "📅 "
print "Created 1 mission project scoped "

print '///Creating Project signed_off for alex with 1 mission...///'
appcar = Project.create!(
  company: cars,
  user: samia,
  request_title: "Création d'une site web",
  request_description:"Site web de réservation pour de la réparation automobile",
  budget: 10000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une application web",
  description: "Conception d'une application web pour la réservation et la gestion des rdvs",
  category: "Application Web",
  price_cents: 2000000,
  agreed_delivery_at: DateTime.now + 4.month,
  scoped_at: DateTime.now + 15.day,
  signed_off_at: DateTime.now + 20.day
  )
print "Project signed_off created "

print "Creating 1 mission project signed_off "
fullappcar = Mission.create!(
  project: appcar,
  title: "Front/Back App Web",
  description: "Conception d'une application web pour la réservation et la gestion des rdvs",
  skills: [html_css, javascript, rails],
  price: 20000
  )
print "📅 "
print "Created 1 mission project signed_off "


print '///Creating Project delivered_at for Reka with 1 mission and 1 apply...///'
appwresto = Project.create!(
  company: resto,
  user: samia,
  request_title: "Création d'un site web",
  request_description:"Site vitrine pour parler du restaurant avec un blog",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une application web",
  description: "Application web vitrine pour un restaurant. Intégration d'un blog et d'un back-office admin",
  category: "Application Web",
  price_cents: 1000000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  )
print "Project delivered_at created "

print "Creating 1 missions project delivered_at "
fullappwresto = Mission.create!(
  project: appwresto,
  title: "Front/Back App Web",
  description: "Application web vitrine pour un restaurant. Intégration d'un blog et d'un back-office admin",
  skills: [html_css, javascript, rails],
  price: 20000
  )
print "📅 "
print "Created 1 mission project delivered_at "

print "Creating 1 apply project delivered_at "
accepted = Apply.create!(
  user: phil,
  mission: fullappwresto,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 1 apply project delivered_at "

print '///Creating Project paid_off for hugues with 1 mission and 1 apply...///'
ecomflower = Project.create!(
  company: flower,
  user: samia,
  request_title: "Création d'un boutique e-commerce",
  request_description:"Je souhaiterai vendre des bouquets de roses personnalisées",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'un e-shop",
  description: "E-shop de vente de bouquets de roses personnalisées. Personnalisation de l'expérience",
  category: "Application E-commerce",
  price_cents: 3000000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 4.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  paid_off_at: DateTime.now + 2.month + 10.day
  )
print "Project paid_off created "

print "Creating 1 mission project paid_off "
appecomflower = Mission.create!(
  project: ecomflower,
  title: "Front End App Web",
  description: "Conception du front d'un e-shop de vente de bouquets de roses personnalisées. Personnalisation de l'expérience",
  skills: [html_css, javascript],
  price: 12000
  )
print "📅 "
print "Created 1 mission project paid_off "

print "Creating 1 apply project paid_off "
accepted = Apply.create!(
  user: phil,
  mission: appecomflower,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 1 apply project paid_off "
print '///Created 4 Projects...///'
