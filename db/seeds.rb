Apply.destroy_all
Mission.destroy_all
Skill.destroy_all
Project.destroy_all
Company.destroy_all
User.destroy_all

print '///Creating 2 Bootcamper...///'
phil = User.create!(
  first_name: "Philippe",
  last_name: "Despreaux",
  phone_number: "00 00 00 00 00",
  email: "bootcamper@bootcampers.com",
  password: "bootcamper",
  bio: "Je suis developer sur ruby on rails depuis 2 mois. J'ai fait le batch #102 du wagon de bordeaux. mes langages de prédilections sont Ruby, HTML et CSS.",
  role: :bootcamper,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/philippe_kuh8vu.jpg"
  )
print "👶 "

sylv = User.create!(
  first_name: "Sylvain",
  last_name: "Peigney",
  phone_number: "55 55 55 55 55",
  email: "sylvain@bootcampers.com",
  password: "sylvain",
  bio: "Je suis developer depuis plus de 10 ans et mes langages de prédilections sont Ruby, HTML et CSS.",
  role: :bootcamper,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/sylvain_lv30rh.jpg"
  )
print "👶 "


print 'Creating 1 Leader...'
samia = User.create!(
  first_name: "Samia",
  last_name: "Dahmouni",
  phone_number: "11 11 11 11 11",
  email: "samia@bootcampers.com",
  password: "samiad",
  bio: "Je suis developer sur ruby on rails depuis 2 mois. J'ai fait le batch #102 du wagon de bordeaux. mes langages de prédilections sont Ruby, HTML et CSS. Et je suis leader chez Bootcampers",
  role: :leader,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/samia_kituxm.png"
  )
print "👶 "

print 'Creating 1 Client...'
valentin = User.create!(
  first_name: "Valentin",
  last_name: "Ferron",
  phone_number: "22 22 22 22 22",
  email: "valentin@company.com",
  password: "company",
  bio: "Je suis dirigeant de la Company et j'ai un super projet à faire développer. Je voudrais donc passer par Bootcampers pour mon projet.",
  role: :client,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/valentin_mmqlj2.jpg"
  )
print "👶 "
print "///Users created///"

print '///Creating 1 Company...///'
company = Company.create!(
  name: "Val&Co",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 123 132 13205",
  activity_code: "553A",
  vat_number: "123456789TVA",
  website: "www.company.fr",
  user: valentin,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/val-co_uqcre2.png"
  )
print "📅 "
print "///Company created///"

print '///Creating 4 Projects...///'
Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'un site",
  request_description:"Je voudrais un site pour vendre des chapeaux mexicains",
  budget: 3000,
  request_delivery_at: DateTime.now + 2.month,
  accepted_at: "",
  title: "",
  description: "",
  category: "",
  price: 0,
  agreed_delivery_at: "",
  signed_off_at: "",
  delivered_at: "",
  scoped_at: "",
  paid_off_at: ""
  )
print "📅 "

Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'une application",
  request_description:"Application pour ne pas oublier ses aliments dans le frigo",
  budget: 10000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "",
  description: "",
  category: "",
  price: 0,
  agreed_delivery_at: "",
  signed_off_at: "",
  delivered_at: "",
  scoped_at: "",
  paid_off_at: ""
  )
print "📅 "

crm = Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'un CRM",
  request_description:"Back office pour gérer nos clients, CA, stats, commerciaux, etc",
  budget: 50000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'un CRM client",
  description: "Gestion client, CA, prospection, vente, promotion, communication, commerciaux",
  category: "Application Web",
  price: 60000,
  agreed_delivery_at: DateTime.now + 2.month,
  signed_off_at: DateTime.now,
  delivered_at: "",
  scoped_at: "",
  paid_off_at: ""
  )
print "📅 "

app = Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'une app",
  request_description:"App permettant de nettoyer notre emprunte carbone",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une Application Mobile",
  description: "App permettant de nettoyer notre emprunte carbone",
  category: "Application Mobile",
  price: 21000,
  agreed_delivery_at: DateTime.now + 2.month,
  signed_off_at: DateTime.now + 3.day,
  delivered_at: DateTime.now + 2.month,
  scoped_at: DateTime.now,
  paid_off_at: DateTime.now + 2.month + 10.day
  )
print "📅 "
print "///Projects created///"

print "///Creating 3 Skills...///"
javascript = Skill.create!(name: "js", color: "#75A623")
rails = Skill.create(name: "rails", color: '#D0021B')
html_css = Skill.create(name: "html/css", color: '#709EF2')
print "///Skills created///"

print '///Creating 5 Missions...///'
front = Mission.create!(
  project: crm,
  title: "Front d'un CRM",
  description: "Conception du Front end d'un CRM, 10 pages, components, etc",
  skills: [html_css],
  price: 20000
  )
print "📅 "

frontend = Mission.create!(
  project: crm,
  title: "Front End d'un CRM",
  description: "Conception du Front end d'un CRM, 10 pages, components, etc",
  skills: [html_css],
  price: 5000
  )
print "📅 "

back = Mission.create!(
  project: crm,
  title: "Back d'un CRM",
  description: "Conception des controllers d'un CRM, des routes, etc",
  skills: [rails, javascript],
  price: 30000
  )
print "📅 "

js = Mission.create!(
  project: crm,
  title: "Javascript d'un CRM",
  description: "Conception du javascript sur les pages d'un CRM",
  skills: [javascript],
  price: 10000
  )
print "📅 "

back_end = Mission.create!(
  project: app,
  title: "Back end d'une app mobile",
  description: "Conception de la structure et dev du back end",
  skills: [rails],
  price: 10000
  )
print "📅 "
print "///Missions created///"

print '///Creating 8 Applies...///'
pending = Apply.create!(
  user: phil,
  mission: front,
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: back,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: phil,
  mission: js,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: back_end,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

pending = Apply.create!(
  user: sylv,
  mission: back_end,
  )
print "📅 "

accepted = Apply.create!(
  user: sylv,
  mission: front,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: back,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: sylv,
  mission: js,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "
print "///Applies created///"
