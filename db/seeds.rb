require 'faker'
puts "SEED: START CLEAR"
Booking.destroy_all
Review.destroy_all
Offer.destroy_all
User.destroy_all
puts "SEED: START POPULATE USERS"
seller1 = User.create!(
  first_name: "Patrick",
  last_name: "ABIDBOL",
  email: 'seller1@gmail.com',
  password: 'seller01@',
  description: "It's raining men ,alleluia !",
  avatar_url: "https://kitt.lewagon.com/placeholder/users/random",
  is_seller: true
)
seller2 = User.create!(
  first_name: "John F.",
  last_name: "KENNEDY",
  email: 'seller2@gmail.com',
  password: 'seller02@',
  description: "What else...",
  avatar_url: "https://kitt.lewagon.com/placeholder/users/random",
  is_seller: true
)
customer1 = User.create!(
  first_name: "La Petite",
  last_name: "SIRENE",
  description: "Sur la plage abandonnée... Coquillages et crustacés !",
  email: 'customer1@gmail.com',
  password: 'customer01@',
  avatar_url: "https://kitt.lewagon.com/placeholder/users/random",
  is_seller: false
)
puts "SEED: START POPULATE OFFERS"
  12.times do
    offer = Offer.new(
      title: Faker::Company.name,
      description: Faker::Lorem.sentences.join(" "),
      price: Faker::Number.number(digits: 3),
      date: Faker::Date.forward(days: 90),
      user: [seller1, seller2].sample
    )
    offer.save!
  end
puts "SEED: START POPULATE BOOKINGS"
# Une offre n'apparraitra pas deux fois
Offer.first(12).shuffle.each do |offer|
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: User.all.sample,
    offer: offer
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: users.sample,
        offer: offer
      )
    end
  end
end
puts "SEED: END POPULATE"

# secret seed (false => true pour activer)
return unless ENV["secret"] || false

wagonners = [
  ["violaine", "https://avatars1.githubusercontent.com/u/70322815?v=4"],
  ["anne-cecile", "https://avatars3.githubusercontent.com/u/34253262?v=4"],
  ["charlotte", "https://avatars2.githubusercontent.com/u/70255612?v=4"],
  ["matthias", "https://avatars2.githubusercontent.com/u/48900320?v=4"],
  ["Florent", "https://avatars2.githubusercontent.com/u/65367849?v=4"],
  ["Mael", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601908758/rtos8nfz2zacii2dndkc.jpg"],
  ["Baptiste", "https://avatars3.githubusercontent.com/u/66240536?v=4"],
  ["Julie", "https://avatars3.githubusercontent.com/u/66240536?v=4"],
  ["Hugo", "https://avatars0.githubusercontent.com/u/69712961?v=4"],
  ["Romain", "https://avatars0.githubusercontent.com/u/33032199?v=4"],
  ["Andy", "https://avatars1.githubusercontent.com/u/70142940?v=4"],
  ["Alexis", "https://avatars1.githubusercontent.com/u/70142940?v=4"],
  ["Jean-Christophe", "https://avatars3.githubusercontent.com/u/70380868?v=4"],
  ["Maxime", "https://avatars1.githubusercontent.com/u/46489455?v=4"],
  ["Remi", "https://avatars1.githubusercontent.com/u/55163524?v=4"],
  ["Jasmine", "https://avatars1.githubusercontent.com/u/71343481?v=4"],
  ["Thomas", "https://avatars0.githubusercontent.com/u/69688905?v=4"],
  ["manu", " https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1535441137/yrwdxzada2biesrzqgeb.jpg"],
  ["claudine", "https://avatars0.githubusercontent.com/u/34744530?v=4"],
  ["Benoit", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1572301074/y7bljjqfaifhvzaqyvza.jpg"],
  ["Sylvain", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1540307110/x6vx55r27uspuk5qllnh.jpg"],
  ["Charles-Henri", "https://avatars1.githubusercontent.com/u/31434839?v=4"],
  ["Jonathan", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1495543370/jerclbbakoluf9xjpkrc.jpg"],
  ["Bertrand", "https://avatars1.githubusercontent.com/u/9798952?v=4"],
  ["Valentin ", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1574945472/mw3lw9ugd3aqt7abs7pk.jpg"]
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
  "Outre mon air de Sean Connery, appréhende le vice et la perversité comme personne",
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
  "On m'appele aussi Elwis Presse Les. Je sais pas pourquoi.",
  "VOTEZ POUR MOI"
]
pranks = [
  ["Epiler la victime au Chartertone", "Une souffrance jamais égalée"],
  ["Mettre une punaise sur la chaise", "Une attaque directe à la fierté de l'adversaire"],
  ["Meurtre à base de légumineux de saison", "No Comment"],
  ["Pousser dans les escaliers", "No Comment"],
  ["Emietter trois Granolas dans le lit de la victime", "Nombreux sont ceux qui ne s'en sont jamais remis"],
  ["Assommer avec un curcurbitacé", "Tuer en s'amusant"],
  ["Déposer une couche sale dans la chambre de la victime endormie", "Trés peu pour moi"],
  ["La fameuse crotte de chien dans un sac enflammé", "Ne marche pas dans le Sud. Il n'ont pas de chaussures"],
  ["Ligoter et forcer à manger 127 nuggets Mc Do", "En l'écrivant j'ai vomi dans ma bouche"],
  ["Uriner dans les chaussures de la victime", "Simple, mais toujours efficace. Et salutaire"],
  ["Giffler", "Un classique. Rechauffe les mains en hiver"],
  ["Parler longtemps de trés près après une pizza de chez Marco", "Le fameux oncle Marco..."],
  ["Coup de boule", "Bim !"],
  ["Refiler des morpions", "Encore faut-il en avoir"],
  ["Assassinat en découpant la carotide avec une feuille de chêne", "Le tarif dépend de la saison"],
  ["Biffler", "No Comment"],
  ["Une decapitation standard", "No Comment"],
  ["Cracher dans le café de la victime", "Après une pizza de chez Marco"],
  ["Jeter des orties et partir en courant", "Le prix reflète l'effort fourni"],
  ["Poser un piège à loups, sur la tête de la victime", "Penser à porter une blouse"],
  ["Mettre de la superglue sur la cuvette des toilettes", "Pire chez les victimes velues"],
  ["Jeter un pot de peinture indélébile sur la victime", "Ne pas hésiter à demander le suppléments Plumes et Graviers"],
  ["Poil à gratter", "Favoriser le poil de loutre. Ou de phoque"]
]

puts "SECRET SEED: START CLEAR"
Booking.destroy_all
Review.destroy_all
Offer.destroy_all
User.destroy_all
puts "SECRET SEED: START POPULATE USERS"
#login toujours present pour test
wagonner = ["Titouan", "https://avatars3.githubusercontent.com/u/71375669?v=4"]
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
18.times do
  wagonner = wagonners.sample
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
   # Pour éviter 2x les doublons
  wagonners.delete(wagonner)
  descriptions.delete(description)
end
puts "SECRET SEED: START POPULATE OFFERS"
users = User.all
  24.times do
    prank = pranks.sample;
    Offer.create!(
      title: prank[0],
      description: prank[1],
      price: Faker::Number.number(digits: 3),
      date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
      user: users.sample
    )
  end
puts "SECRET SEED: START POPULATE BOOKINGS"
Offer.all.first(18).shuffle.each do |offer|
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: users.sample,
    offer: offer
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: users.sample,
        offer: offer
      )
    end
  end
end
puts "SECRET SEED: END POPULATE"
