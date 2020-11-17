require 'faker'
puts "SEED: START CLEAR"
Offer.destroy_all
Review.destroy_all
User.destroy_all
Booking.destroy_all
puts "SEED: START POPULATE USERS"
seller1 = User.create!(
  email: 'seller1@gmail.com',
  password: 'seller01@',
  is_seller: true
)
seller2 = User.create!(
  email: 'seller2@gmail.com',
  password: 'seller02@',
  is_seller: true
)
customer1 = User.create!(
  email: 'customer1@gmail.com',
  password: 'customer01@',
  is_seller: false
)
puts "SEED: START POPULATE OFFERS"
  10.times do
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
puts "SEED: END POPULATE"

# secret seed
return if false

wagonners = [
  ["violaine", "https://avatars1.githubusercontent.com/u/70322815?v=4"],
  ["anne-cecile", "https://avatars3.githubusercontent.com/u/34253262?v=4"],
  ["charlotte", "https://avatars2.githubusercontent.com/u/70255612?v=4"],
  ["matthias", "https://avatars2.githubusercontent.com/u/48900320?v=4"],
  ["Titouan", "https://avatars3.githubusercontent.com/u/71375669?v=4"],
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
pranks = [
  ["Epiler la victime au Chartertone", "Une souffrance jamais égalée"],
  ["Mettre une punaise sur la chaise", "Une attaque directe à la fierté de l'adversaire"],
  ["Meurtre à base de légumineux de saison", "No Comment"],
  ["Pousser dans les escaliers", "No Comment"],
  ["Emietter trois Granolas dans le lit de la victime", "Nombreux sont ceux qui ne s'en sont jamais remis"],
  ["Assommer avec un curcurbitacé", "Tuer en s'amusant"],
  ["Déposer une couche sale dans la chambre de la victime endormie", "Trés peu pour moi"],
  ["Ligoter et forcer à manger 127 nuggets Mc Do", "En l'écrivant j'ai vomi dans ma bouche"],
  ["Uriner dans les chaussures de la victime", "Simple, mais toujours efficace. Et salutaire"],
  ["Giffler", "Un classique. Rechauffe les mains en hiver"],
  ["Parler longtemps de trés près après une pizza de chez Marco", "Le fameux oncle Marco..."],
  ["Coup de boule", "Bim !"],
  ["Refiler des morpions", "Encore faut-il en avoir"],
  ["Assassinat en découpant la carotide avec une feuille de chêne", "Le tarif dépend de la saison"],
  ["Biffler", "No Comment"],
  ["Cracher dans le café de la victime", "Après une pizza de chez Marco"],
  ["Jeter des orties et partir en courant", "Le prix reflète l'effort fourni"],
  ["Poil à gratter", "Favoriser le poil de loutre. Ou de phoque"]
]

puts "SECRET SEED: START CLEAR"
Offer.destroy_all
Review.destroy_all
User.destroy_all
Booking.destroy_all
puts "SECRET SEED: START POPULATE USERS"
18.times do
  wagonner = wagonners.sample
  nickname = nicknames.sample
  User.create!(
    first_name: nickname[1] ? wagonner[0].capitalize : nickname[0].capitalize,
    last_name: nickname[1] ? nickname[0].capitalize : wagonner[0].capitalize,
    email: "#{wagonner[0].strip.downcase}@test.fr",
    password: "wagonner",
    is_seller: true
  )
  wagonners.delete(wagonner) # Pour éviter 2x le meme user
end
puts "SECRET SEED: START POPULATE OFFERS"
  24.times do
    prank = pranks.sample;
    Offer.create!(
      title: prank[0],
      description: prank[1],
      price: Faker::Number.number(digits: 3),
      date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
      user: User.all.sample
    )
  end
puts "SECRET SEED: START POPULATE BOOKINGS"
30.times do
  Booking.create!(
    status: [0, 1, 1].sample,
    user: User.all.sample,
    offer: Offer.all.sample,
  )
end
puts "SECRET SEED: END POPULATE"
