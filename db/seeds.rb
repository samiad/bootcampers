Apply.destroy_all
MissionSkill.destroy_all
Mission.destroy_all
Skill.destroy_all
Project.destroy_all
Company.destroy_all
User.destroy_all

print '///Creating 2 Bootcampers...///'
phil = User.create!(
  first_name: "Philippe",
  last_name: "Despreaux",
  phone_number: "00 00 00 00 00",
  email: "bootcamper@bootcampers.co",
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
  email: "sylvain@bootcampers.co",
  password: "sylvain",
  bio: "Je suis developer depuis plus de 10 ans et mes langages de prédilections sont Ruby, HTML et CSS.",
  role: :bootcamper,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/sylvain_lv30rh.jpg"
  )
print "👶 "
print '///Created 2 Bootcampers...///'

print '///Creating 2 Leaders...///'
aur = User.create!(
  first_name: "Aurélien",
  last_name: "Galoppe",
  phone_number: "10 10 10 10 10",
  email: "aurelien@bootcampers.co",
  password: "aurelien",
  bio: "Je suis developer sur ruby on rails depuis 2 ans et mes langages de prédilections sont Ruby, HTML et CSS. Et je suis leader chez Bootcampers",
  role: :leader,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511530103/aurelien_etlwlw.jpg"
  )
print "👶 "

samia = User.create!(
  first_name: "Samia",
  last_name: "Dahmouni",
  phone_number: "11 11 11 11 11",
  email: "samia@bootcampers.co",
  password: "samiad",
  bio: "Je suis developer sur ruby on rails depuis 2 mois. J'ai fait le batch #102 du wagon de bordeaux. mes langages de prédilections sont Ruby, HTML et CSS. Et je suis leader chez Bootcampers",
  role: :leader,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/samia_kituxm.png"
  )
print "👶 "
print '///Created 2 Leaders///'

print '///Creating 2 Clients...///'
valentin = User.create!(
  first_name: "Valentin",
  last_name: "Ferron",
  phone_number: "22 22 22 22 22",
  email: "valentin@company.co",
  password: "company",
  bio: "Je suis dirigeant de la Company et j'ai un super projet à faire développer. Je voudrais donc passer par Bootcampers pour mon projet.",
  role: :client,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511358254/valentin_mmqlj2.jpg"
  )
print "👶 "

jo = User.create!(
  first_name: "Jo",
  last_name: "Serafini",
  phone_number: "88 88 88 88 88",
  email: "jo@company.co",
  password: "joseraf",
  bio: "Je suis dirigeant de la Company et j'ai un super projet à faire développer. Je voudrais donc passer par Bootcampers pour mon projet.",
  role: :client,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511530104/jo_u1gep2.png"
  )
print "👶 "
print '///Created 2 Clients///'
print "///Users created///"

print '///Creating 2 Companies...///'
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

jocomp = Company.create!(
  name: "Jo&Co",
  address: "107 cours Balguerie Stuttenberg, 33300 Bordeaux",
  siret: "123 123 155 13205",
  activity_code: "554A",
  vat_number: "123478989TVA",
  website: "www.jocompany.fr",
  user: jo,
  photo_url: "http://res.cloudinary.com/samiad/image/upload/v1511530948/jo-co_i3qvf4.png"
  )
print "📅 "
print "///Created Companies///"

print "///Creating 3 Skills...///"
javascript = Skill.create!(name: "js", color: "#75A623")
rails = Skill.create!(name: "rails", color: '#D0021B')
html_css = Skill.create!(name: "html/css", color: '#709EF2')
print "///Created Skills///"

print '///Creating 12 Projects...///'
print '///Creating 6 Projects for Val&Co...///'

print '///Creating Project request for VAL...///'
Project.create!(
  company: company,
  request_title: "Création d'un site / V",
  request_description:"Je voudrais un site pour vendre des chapeaux mexicains",
  budget: 3000,
  request_delivery_at: DateTime.now + 2.month,
  )
print "Project request created "

print '///Creating Project accepted for VAL...///'
Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'un site / V",
  request_description:"Je voudrais un site pour vendre des chapeaux mexicains",
  budget: 3000,
  request_delivery_at: DateTime.now + 2.month,
  accepted_at: DateTime.now - 1.day
  )
print "Project accepted created "

print '///Creating Project scoped for VAL with 2 missions...///'
appm = Project.create!(
  company: company,
  user: aur,
  request_title: "Création d'une application / V",
  request_description:"Application pour ne pas oublier ses aliments dans le frigo",
  budget: 10000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une application mobile / V",
  description: "Gestion des aliments et notifications",
  category: "Application Mobile",
  price: 60000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  )
print "Project scoped created "

print "Creating 2 missions project scoped "
frontappm = Mission.create!(
  project: appm,
  title: "Front d'une app mobile",
  description: "Conception du Front end d'une application mobile",
  skills: [html_css, javascript],
  price: 30000
  )
print "📅 "

backappm = Mission.create!(
  project: appm,
  title: "Back end d'une app mobile",
  description: "Conception du Back end d'une application mobile",
  skills: [rails],
  price: 30000
  )
print "📅 "
print "Created 2 missions project scoped "

print '///Creating Project signed_off for VAL with 2 missions and 4 applies...///'
crm = Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'un CRM / V",
  request_description:"Back office pour gérer nos clients, CA, stats, commerciaux, etc",
  budget: 50000,
  request_delivery_at: DateTime.now + 2.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'un CRM client / V",
  description: "Gestion client, CA, prospection, vente, promotion, communication, commerciaux",
  category: "Application Web",
  price: 50000,
  agreed_delivery_at: DateTime.now + 4.month,
  scoped_at: DateTime.now + 15.day,
  signed_off_at: DateTime.now + 20.day
  )
print "Project signed_off created "

print "Creating 2 missions project signed_off "
frontcrm = Mission.create!(
  project: crm,
  title: "Front End d'un CRM",
  description: "Conception du Front end d'un CRM, 10 pages, components, etc",
  skills: [html_css, javascript],
  price: 20000
  )
print "📅 "

backcrm = Mission.create!(
  project: crm,
  title: "Back End d'un CRM",
  description: "Conception des controllers d'un CRM, des routes, etc",
  skills: [rails],
  price: 30000
  )
print "📅 "
print "Created 2 missions project signed_off "

print "Creating 4 applies project signed_off "
pending = Apply.create!(
  user: phil,
  mission: frontcrm,
  )
print "📅 "

pending = Apply.create!(
  user: sylv,
  mission: frontcrm,
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: backcrm,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: backcrm,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project signed_off "

print '///Creating Project delivered_at for VAL with 2 missions and 4 applies...///'
appw = Project.create!(
  company: company,
  user: aur,
  request_title: "Création d'une application web / V",
  request_description:"Application web permettant de nettoyer notre empreinte carbone",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une Application Web / V",
  description: "Application web permettant de nettoyer notre empreinte carbone",
  category: "Application Web",
  price: 30000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  )
print "Project delivered_at created "

print "Creating 2 missions project delivered_at "
frontappw = Mission.create!(
  project: appw,
  title: "Front End d'une application web",
  description: "Conception du Front end d'une application web",
  skills: [html_css, javascript],
  price: 12000
  )
print "📅 "

backappw = Mission.create!(
  project: appw,
  title: "Back End d'une application web",
  description: "Conception du Back end d'une application web",
  skills: [rails],
  price: 18000
  )
print "📅 "
print "Created 2 missions project delivered_at "

print "Creating 4 applies project delivered_at "
accepted = Apply.create!(
  user: sylv,
  mission: frontappw,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: phil,
  mission: frontappw,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: backappw,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: backappw,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project delivered_at "

print '///Creating Project paid_off for VAL with 2 missions and 4 applies...///'
plat = Project.create!(
  company: company,
  user: samia,
  request_title: "Création d'une plateforme / V",
  request_description:"plateforme permettant de trouver des lieux sympa où aller",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une Application Web / V",
  description: "Plateforme permettant d'indiquer des spots liké par des influenceurs et amis",
  category: "Application Web",
  price: 30000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 4.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  paid_off_at: DateTime.now + 2.month + 10.day
  )
print "Project paid_off created "

print "Creating 2 missions project paid_off "
frontplat = Mission.create!(
  project: plat,
  title: "Front End d'une application web",
  description: "Conception du Front end d'une application web",
  skills: [html_css, javascript],
  price: 12000
  )
print "📅 "

backplat = Mission.create!(
  project: plat,
  title: "Back End d'une application web",
  description: "Conception du Back end d'une application web",
  skills: [rails],
  price: 18000
  )
print "📅 "
print "Created 2 missions project paid_off "

print "Creating 4 applies project paid_off "
accepted = Apply.create!(
  user: phil,
  mission: frontplat,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: frontplat,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: sylv,
  mission: backplat,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: phil,
  mission: backplat,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project paid_off "
print '///Created 6 Projects for Val&Co...///'


print '///Creating 6 Projects for Jo&Co...///'
print '///Creating Project request for JO...///'
Project.create!(
  company: jocomp,
  request_title: "Création d'un site / J",
  request_description:"Je voudrais un site pour vendre des chapeaux mexicains",
  budget: 3000,
  request_delivery_at: DateTime.now + 2.month,
  )
print "Project request created "

print '///Creating Project accepted for JO...///'
Project.create!(
  company: jocomp,
  user: aur,
  request_title: "Création d'un site / J",
  request_description:"Je voudrais un site pour vendre des chapeaux mexicains",
  budget: 3000,
  request_delivery_at: DateTime.now + 2.month,
  accepted_at: DateTime.now - 1.day
  )
print "Project accepted created "

print '///Creating Project scoped for JO with 2 missions...///'
appmjo = Project.create!(
  company: jocomp,
  user: samia,
  request_title: "Création d'une application / J",
  request_description:"Application pour ne pas oublier ses aliments dans le frigo",
  budget: 10000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une application mobile / J",
  description: "Gestion des aliments et notifications",
  category: "Application Mobile",
  price: 60000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  )
print "Project scoped created "

print "Creating 2 missions project scoped "
frontappmjo = Mission.create!(
  project: appmjo,
  title: "Front d'une app mobile",
  description: "Conception du Front end d'une application mobile",
  skills: [html_css, javascript],
  price: 30000
  )
print "📅 "

backappmjo = Mission.create!(
  project: appmjo,
  title: "Back end d'une app mobile",
  description: "Conception du Back end d'une application mobile",
  skills: [rails],
  price: 30000
  )
print "📅 "
print "Created 2 missions project scoped "

print '///Creating Project signed_off for JO with 2 missions and 4 applies...///'
crmjo = Project.create!(
  company: jocomp,
  user: aur,
  request_title: "Création d'un CRM / J",
  request_description:"Back office pour gérer nos clients, CA, stats, commerciaux, etc",
  budget: 50000,
  request_delivery_at: DateTime.now + 2.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'un CRM client / J",
  description: "Gestion client, CA, prospection, vente, promotion, communication, commerciaux",
  category: "Application Web",
  price: 50000,
  agreed_delivery_at: DateTime.now + 4.month,
  scoped_at: DateTime.now + 15.day,
  signed_off_at: DateTime.now + 20.day
  )
print "Project signed_off created "

print "Creating 2 missions project signed_off "
frontcrmjo = Mission.create!(
  project: crmjo,
  title: "Front End d'un CRM",
  description: "Conception du Front end d'un CRM, 10 pages, components, etc",
  skills: [html_css, javascript],
  price: 20000
  )
print "📅 "

backcrmjo = Mission.create!(
  project: crmjo,
  title: "Back End d'un CRM",
  description: "Conception des controllers d'un CRM, des routes, etc",
  skills: [rails],
  price: 30000
  )
print "📅 "
print "Created 2 missions project signed_off "

print "Creating 4 applies project signed_off "
pending = Apply.create!(
  user: phil,
  mission: frontcrmjo,
  )
print "📅 "

pending = Apply.create!(
  user: sylv,
  mission: frontcrmjo,
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: backcrmjo,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: backcrmjo,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project signed_off "

print '///Creating Project delivered_at for JO with 2 missions and 4 applies...///'
appwjo = Project.create!(
  company: jocomp,
  user: samia,
  request_title: "Création d'une application web / J",
  request_description:"Application web permettant de nettoyer notre empreinte carbone",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une Application Web / J",
  description: "Application web permettant de nettoyer notre empreinte carbone",
  category: "Application Web",
  price: 30000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 7.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  )
print "Project delivered_at created "

print "Creating 2 missions project delivered_at "
frontappwjo = Mission.create!(
  project: appwjo,
  title: "Front End d'une application web",
  description: "Conception du Front end d'une application web",
  skills: [html_css, javascript],
  price: 12000
  )
print "📅 "

backappwjo = Mission.create!(
  project: appwjo,
  title: "Back End d'une application web",
  description: "Conception du Back end d'une application web",
  skills: [rails],
  price: 18000
  )
print "📅 "
print "Created 2 missions project delivered_at "

print "Creating 4 applies project delivered_at "
accepted = Apply.create!(
  user: sylv,
  mission: frontappwjo,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: phil,
  mission: frontappwjo,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: phil,
  mission: backappwjo,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: backappwjo,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project delivered_at "

print '///Creating Project paid_off for JO with 2 missions and 4 applies...///'
platjo = Project.create!(
  company: jocomp,
  user: aur,
  request_title: "Création d'une plateforme / J",
  request_description:"plateforme permettant de trouver des lieux sympa où aller",
  budget: 20000,
  request_delivery_at: DateTime.now + 1.month,
  accepted_at: DateTime.now - 1.day,
  title: "Conception d'une Application Web / J",
  description: "Plateforme permettant d'indiquer des spots liké par des influenceurs et amis",
  category: "Application Web",
  price: 30000,
  agreed_delivery_at: DateTime.now + 2.month,
  scoped_at: DateTime.now + 4.day,
  signed_off_at: DateTime.now + 10.day,
  delivered_at: DateTime.now + 2.month,
  paid_off_at: DateTime.now + 2.month + 10.day
  )
print "Project paid_off created "

print "Creating 2 missions project paid_off "
frontplatjo = Mission.create!(
  project: platjo,
  title: "Front End d'une application web",
  description: "Conception du Front end d'une application web",
  skills: [html_css, javascript],
  price: 12000
  )
print "📅 "

backplatjo = Mission.create!(
  project: platjo,
  title: "Back End d'une application web",
  description: "Conception du Back end d'une application web",
  skills: [rails],
  price: 18000
  )
print "📅 "
print "Created 2 missions project paid_off "

print "Creating 4 applies project paid_off "
accepted = Apply.create!(
  user: phil,
  mission: frontplatjo,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: sylv,
  mission: frontplatjo,
  declined_at: DateTime.now + 5.day
  )
print "📅 "

accepted = Apply.create!(
  user: sylv,
  mission: backplatjo,
  accepted_at: DateTime.now + 5.day
  )
print "📅 "

refused = Apply.create!(
  user: phil,
  mission: backplatjo,
  declined_at: DateTime.now + 5.day
  )
print "📅 "
print "Created 4 applies project paid_off "
print '///Created 6 Projects for Jo&Co...///'

print "///Projects created///"
