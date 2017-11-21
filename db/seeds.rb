Apply.destroy_all
Mission.destroy_all
Skill.destroy_all
Project.destroy_all
Company.destroy_all
User.destroy_all

print 'Creating 1 Bootcamper...'
phil = User.create!(
  first_name: "Philippe",
  last_name: "Despreaux",
  phone_number: "00 00 00 00 00",
  email: "bootcamper@bootcampers.com",
  password: "bootcamper",
  bio: "Je suis developer sur ruby on rails depuis 2 mois. J'ai fait le batch #102 du wagon de bordeaux. mes langages de prédilections sont Ruby, HTML et CSS.",
  role: :bootcamper
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
  role: :leader
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
  role: :client
  )
print "👶 "
print "Users created"

print 'Creating 1 Company...'
company = Company.create!(
  name: "Valentin Company",
  address: "120 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 123 132 13205",
  activity_code: "553A",
  vat_number: "123456789TVA",
  website: "www.company.fr",
  user: valentin
  )
print "📅 "
print "Company created"

print 'Creating 3 Projects...'
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
print "Projects created"

print "Creating 3 Skills..."
javascript = Skill.create!(name: "javascript", color: "#75A623")
rails = Skill.create(name: "rails", color: '#D0021B')
html_css = Skill.create(name: "html/Css", color: '#709EF2')
print "Skills created"

print 'Creating 3 Missions...'
front = Mission.create!(
  project: crm,
  title: "Front End d'un CRM",
  description: "Conception du Front end d'un CRM, 10 pages, components, etc",
  skills: [html_css],
  price: 20000
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
print "Missions created"

print 'Creating 3 Applies...'
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
print "Applies created"
