require 'faker'
require 'open-uri'

def get_as_file( tof)
  url = "https://res.cloudinary.com/magicflo/image/upload/v1605794465/#{tof}.jpg"
  URI.open(url)
end

wagonners = [
  ["violaine", "https://avatars1.githubusercontent.com/u/70322815?v=4"],
  ["anne-cecile", "https://avatars3.githubusercontent.com/u/34253262?v=4"],
  ["charlotte", "https://avatars2.githubusercontent.com/u/70255612?v=4"],
  ["matthias", "https://avatars2.githubusercontent.com/u/48900320?v=4"],
  ["Florent", "https://avatars2.githubusercontent.com/u/65367849?v=4"],
  # ["Mael", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601908758/rtos8nfz2zacii2dndkc.jpg"],
  ["Baptiste", "https://avatars3.githubusercontent.com/u/66240536?v=4"],
  ["Julie", "https://avatars1.githubusercontent.com/u/71645739?v=4"],
  ["Hugo", "https://avatars0.githubusercontent.com/u/69712961?v=4"],
  ["Romain", "https://avatars0.githubusercontent.com/u/33032199?v=4"],
  ["Andy", "https://avatars2.githubusercontent.com/u/68812083?v=4"],
  ["Alexis", "https://avatars1.githubusercontent.com/u/70142940?v=4"],
  ["Jean-Christophe", "https://avatars3.githubusercontent.com/u/70380868?v=4"],
  ["Maxime", "https://avatars1.githubusercontent.com/u/46489455?v=4"],
  ["Remi", "https://avatars1.githubusercontent.com/u/55163524?v=4"],
  ["Jasmine", "https://avatars1.githubusercontent.com/u/71343481?v=4"],
  ["Thomas", "https://avatars0.githubusercontent.com/u/69688905?v=4"],
  # ["manu", " https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1535441137/yrwdxzada2biesrzqgeb.jpg"],
  ["claudine", "https://avatars0.githubusercontent.com/u/34744530?v=4"],
  # ["Benoit", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1572301074/y7bljjqfaifhvzaqyvza.jpg"],
  # ["Sylvain", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1540307110/x6vx55r27uspuk5qllnh.jpg"],
  ["Charles-Henri", "https://avatars1.githubusercontent.com/u/31434839?v=4"],
  # ["Jonathan", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1495543370/jerclbbakoluf9xjpkrc.jpg"],
  ["Bertrand", "https://avatars1.githubusercontent.com/u/9798952?v=4"],
  # ["Valentin ", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1574945472/mw3lw9ugd3aqt7abs7pk.jpg"]
]
nicknames = [
  # Le boolean est vrai si le NickName se place Après le prénom
  ["La Gachette", true],
  ["Main d'Acier", true],
  ["Le Bandit", true],
  ["Farceur", false],
  ["Terrific", false],
  ["Reservoir", false],
  ["Les Mains Sales", true],
  ["Aux 100 Couteaux", true],
  ["La Tueuse", true],
  ["La Saucisse", true],
  ["Le Loubard", true],
  ["Killer", true],
  ["Le Faussoyeur", true],
  ["La Geignarde", true],
  ["Matador", true],
  ["Bistoukette", false],
  ["Lames D'acier", true],
  ["Et Sa groose Bate de Baseball", true],
  ["Moutarde", true],
  ["dit Le Muffle", true],
  ["Dingoss", false]
]
descriptions = [
  "Aussi agile avec un couteau, qu'une trotinette",
  "Des chefs d'états ont déjà eu recourt à mes services. Certains sont encore vivant",
  "Je suis l'élite des roublards des bas fonds",
  "Certains m'ont déjà croisé marchant dans la rue, nu en lisant Le Figaro. C'est ça la vie pour moi",
  "Peu le savent, mais un tatouage représentant un pénis dansant le flamenco est caché sur mon pied",
  "J'ai horreur de tous les fruits et légumes bicolores. Même en automne",
  "Rien de particulier à dire. J'ai faim...",
  "Outre mon air de Sean Connery, j'appréhende le vice et la perversité comme personne",
  "Mon apparence me fait défaut, mais ma cruauté compense !",
  "Mes passions dans la vie : Jouer à la roue de la fortune les yeux bandés et faire des ballades en poney, les jours de pluie",
  "Je mérite à être connue. Sauf par la police...",
  "Je peux faire les pires crasses pour un peu d'argent",
  "And so whaaaaaaaat ?",
  "Juste moi, what else ?",
  "Bip Bap A Loolaaaaa",
  "J'aime bien espionner les gens qui dorment dans les canapés du Wagon",
  "J'ai déjà craché dans une tasse du Wagon avant de la reposer :)",
  "Pas de scrupule à faire souffrire les gens. La vie est une chienne",
  "On peut pas décrire mille fois mille personnes, mais... non... ",
  "On m'appele aussi Elwis Presse Les. Je ne sais pas pourquoi.",
  "VOTEZ POUR MOI"
]
pranks = [
  ["Epiler la Target au Chartertone", "Une souffrance jamais égalée", "LeWagon/AIRBNBEAST/_prank_0_xzskuu"],
  ["Mettre une punaise sur la chaise", "Une attaque directe à la fierté de l'adversaire", "LeWagon/AIRBNBEAST/_prank_1_pz7s7d"],
  ["Meurtre à base de légumineux de saison", "No Comment", "LeWagon/AIRBNBEAST/_prank_2_fonl2x"],
  ["Pousser dans les escaliers", "La meilleur chute à votre histoire", "LeWagon/AIRBNBEAST/_prank_3_gcgbkc"],
  ["Emietter trois Granolas dans le lit de la Target", "Nombreux sont ceux qui ne s'en sont jamais remis", "LeWagon/AIRBNBEAST/_prank_4_jod2gj"],
  ["Assommer avec un curcurbitacé", "Tuer en s'amusant", "LeWagon/AIRBNBEAST/_prank_5_qvme5n"],
  ["Déposer une couche sale dans la chambre de la Target endormie", "Trés peu pour moi", "LeWagon/AIRBNBEAST/_prank_6_exmshe"],
  ["La fameuse crotte de chien dans un sac enflammé", "Ne marche pas dans le Sud. Il n'ont pas de chaussures", "LeWagon/AIRBNBEAST/_prank_7_hbsgkp"],
  ["Ligoter et forcer la Target à manger 127 nuggets Mc Do", "En l'écrivant j'ai vomi dans ma bouche", "LeWagon/AIRBNBEAST/_prank_8_kjp5am"],
  ["Uriner dans les chaussures de la Target", "Simple, mais toujours efficace. Et salutaire", "LeWagon/AIRBNBEAST/_prank_9_aauzjb"],
  ["Giffler la Target", "Un classique. Rechauffe les mains en hiver","LeWagon/AIRBNBEAST/_prank_10_ldasj4"],
  ["Parler longtemps de trés près après une pizza de chez Marco", "Le fameux oncle Marco...", "LeWagon/AIRBNBEAST/_prank_11_qaiosm"],
  ["Coup de boule", "Bim !", "LeWagon/AIRBNBEAST/_prank_12_k1dpch"],
  ["Refiler des morpions", "Encore faut-il en avoir", "LeWagon/AIRBNBEAST/_prank_13_hdst7y"],
  ["Assassiner la Target en découpant la carotide avec une feuille de chêne", "Le tarif dépend de la saison", "LeWagon/AIRBNBEAST/_prank_14_u3dvmc"],
  ["Biffler", "No Comment", "LeWagon/AIRBNBEAST/_prank_15_eefmus"],
  ["La B.... au cirage", "On a rien fait de mieux depuis Lara Fabian", "LeWagon/AIRBNBEAST/_prank_16_ktbfgp"],
  ["Cracher dans le café de la Target", "Après une pizza de chez Marco", "LeWagon/AIRBNBEAST/_prank_17_dn8icx"],
  ["Diffuser Lara Fabian dans des enceintes cachées chez la Target", "Le prix reflète l'effort fourni", "LeWagon/AIRBNBEAST/_prank_18_xnot3l"],
  ["Poser un piège à loups, sur la tête de la Target", "Penser à porter une blouse", "LeWagon/AIRBNBEAST/_prank_19_yicw3o"],
  ["Mettre de la superglue sur la cuvette des toilettes", "Pire chez les Targets velues", "LeWagon/AIRBNBEAST/_prank_20_w13chn"],
  ["Jeter un pot de peinture indélébile sur la Target", "Ne pas hésiter à demander le suppléments Plumes et Graviers", "LeWagon/AIRBNBEAST/_prank_21_dmsipo"],
  ["Poil à gratter", "Favoriser le poil de loutre. Ou de phoque", "LeWagon/AIRBNBEAST/_prank_22_vtnciz"]
]

puts "SECRET SEED: START CLEAR"
Booking.destroy_all
Review.destroy_all
Offer.destroy_all
User.destroy_all
puts "SECRET SEED: START POPULATE USERS"
wagonner = ["lucienne", "https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FFAC.2Fvar.2Ffemmeactuelle.2Fstorage.2Fimages.2Fsante.2Fmedecine-douce.2Ftrucs-de-grand-mere-36343.2F14432187-1-fre-FR.2Fces-trucs-de-grand-mere-qui-nous-aident-a-aller-mieux.2Ejpg/1200x1200/quality/80/crop-from/center/ces-remedes-de-grand-mere-qui-nous-aident-a-aller-mieux.jpeg"]
nickname = nicknames.sample
description = descriptions.sample
titouan = User.create!(
  first_name: nickname[1] ? wagonner[0].capitalize : nickname[0].capitalize,
  last_name: nickname[1] ? nickname[0].capitalize : wagonner[0].capitalize,
  email: "#{wagonner[0].strip.downcase}@test.fr",
  password: "wagonner",
  avatar_url: wagonner[1],
  description: description
  # is_seller: true
)
wagonners.shuffle.first(18).each do |wagonner|
  nickname = nicknames.sample
  description = descriptions.sample
  User.create!(
    first_name: nickname[1] ? wagonner[0].capitalize : nickname[0].capitalize,
    last_name: nickname[1] ? nickname[0].capitalize : wagonner[0].capitalize,
    email: "#{wagonner[0].strip.downcase}@test.fr",
    password: "wagonner",
    avatar_url: wagonner[1],
    description: description
    # is_seller: true
  )
end
puts "SECRET SEED: START POPULATE OFFERS"
users = User.all
8.times do
  prank = pranks.sample
  target = users.reject{|user| user == titouan }.sample
  offer = Offer.new(
    title: prank[0],
    description: prank[1],
    price: Faker::Number.number(digits: 3),
    date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
    user: titouan,
    target: "#{target.first_name} #{target.last_name}"
  )
  offer.photo_url.attach(io: get_as_file(prank[2]), filename: offer.user.first_name, content_type: 'image/jpg')
  offer.save!
end
48.times do
  prank = pranks.sample
  bad_boy = users.reject{|user| user == titouan }.sample
  target = users.reject{|user| user == bad_boy || user == titouan}.sample
  offer = Offer.new(
    title: prank[0],
    description: prank[1],
    price: Faker::Number.number(digits: 3),
    date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
    user: bad_boy,
    target: "#{target.first_name} #{target.last_name}"
  )
  offer.photo_url.attach(io: get_as_file(prank[2]), filename: offer.user.first_name, content_type: 'image/jpg')
  offer.save!
end
puts "SECRET SEED: START POPULATE BOOKINGS"
Offer.all.shuffle.reject{|offer| offer.user == titouan || "#{titouan.first_name} #{titouan.last_name}" == offer.target}.first(5).each do |offer|
  target = users.reject{|user| user == offer.user || user == titouan}.sample
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: titouan,
    offer: offer,
    target: "#{target.first_name} #{target.last_name}"
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: titouan,
        offer: offer,
        target: "#{target.first_name} #{target.last_name}"
      )
    end
  end
end
Offer.all.shuffle.first(18).each do |offer|
  buyer = users.reject{|user| user == offer.user && "#{user.first_name} #{user.last_name}" == offer.target}.sample
  target = users.reject{|user| user == offer.user || user == buyer}.sample
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: buyer,
    offer: offer,
    target: "#{target.first_name} #{target.last_name}"
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: buyer,
        offer: offer,
        target: "#{target.first_name} #{target.last_name}"
      )
    end
  end
end
puts "SECRET SEED: END POPULATE"
