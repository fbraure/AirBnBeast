require 'faker'


wagonners = [
  ["violaine", "https://avatars1.githubusercontent.com/u/70322815?v=4"],
  ["anne-cecile", "https://avatars3.githubusercontent.com/u/34253262?v=4"],
  ["charlotte", "https://avatars2.githubusercontent.com/u/70255612?v=4"],
  ["matthias", "https://avatars2.githubusercontent.com/u/48900320?v=4"],
  ["Florent", "https://avatars2.githubusercontent.com/u/65367849?v=4"],
  # ["Mael", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601908758/rtos8nfz2zacii2dndkc.jpg"],
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
  ["Epiler la victime au Chartertone", "Une souffrance jamais égalée", "https://images.pexels.com/photos/4506273/pexels-photo-4506273.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"],
  ["Mettre une punaise sur la chaise", "Une attaque directe à la fierté de l'adversaire", "https://images.pexels.com/photos/348391/pexels-photo-348391.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"],
  ["Meurtre à base de légumineux de saison", "No Comment", "https://images.pexels.com/photos/5915429/pexels-photo-5915429.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"],
  ["Pousser dans les escaliers", "La meilleur chute à votre histoire", "https://images.pexels.com/photos/929282/pexels-photo-929282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"],
  ["Emietter trois Granolas dans le lit de la victime", "Nombreux sont ceux qui ne s'en sont jamais remis", "https://www.aromabio.fr/media/ressources/csm/guide-acne-dos.PNG"],
  ["Assommer avec un curcurbitacé", "Tuer en s'amusant", "https://images.pexels.com/photos/619418/pexels-photo-619418.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"],
  ["Déposer une couche sale dans la chambre de la victime endormie", "Trés peu pour moi", "https://thumbs.dreamstime.com/t/plan-rapproch%C3%A9-de-la-couche-culotte-stinky-sale-jaune-du-b%C3%A9b%C3%A9-nouveau-n%C3%A9-se-trouvant-dessus-118500597.jpg"],
  ["La fameuse crotte de chien dans un sac enflammé", "Ne marche pas dans le Sud. Il n'ont pas de chaussures", "https://www.santevet.com/upload/admin/images/article/chien2_2/logo_chien/djection_canine.png"],
  ["Ligoter et forcer à manger 127 nuggets Mc Do", "En l'écrivant j'ai vomi dans ma bouche", "https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fprd-neon-website-statics.2Es3.2Eeu-west-1.2Eamazonaws.2Ecom.2Fcontent.2Fuploads.2F2014.2F09.2FPas-de-souci-Rhys-Owens-arrive-nettoyer-.25C3.25A7a-331120.2Ejpg/1162x554/quality/80/background-color/ffffff/background-alpha/100/pas-de-souci-rhys-owens-arrive-nettoyer-ca-331120.jpg"],
  ["Uriner dans les chaussures de la victime", "Simple, mais toujours efficace. Et salutaire", "https://cdn.futura-sciences.com/buildsv6/images/wide1920/e/8/0/e800e491e6_128148_uriner-eclabousser.jpg"],
  ["Giffler", "Un classique. Rechauffe les mains en hiver", "https://i.skyrock.net/3577/14423577/pics/651640579_small.jpg"],
  ["Parler longtemps de trés près après une pizza de chez Marco", "Le fameux oncle Marco...", "https://tonpetitlook.com/wp-content/uploads/2017/04/je-pue-de-la-gueule-425708.png"],
  ["Coup de boule", "Bim !", "https://p7.storage.canalblog.com/70/99/1225543/118463194.jpg"],
  ["Refiler des morpions", "Encore faut-il en avoir", "https://upload.wikimedia.org/wikipedia/commons/2/27/Pthirus_pubis_-_crab_louse.jpg"],
  ["Assassinat en découpant la carotide avec une feuille de chêne", "Le tarif dépend de la saison", "https://www.stephanebouillet.com/sites/stephanebouillet.com/files/images/2017/w-musaranas-nb-by-remedact_0.jpg"],
  ["Biffler", "No Comment", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbRhts-CV3ygxzE2AzSSG5vyKqYbTUsSFXjg&usqp=CAU"],
  ["La B.... au cirage", "On a rien fait de mieux depuis Lara Fabian", "https://4.bp.blogspot.com/-P-sHL8swDO4/U3izSOLu89I/AAAAAAAADRA/IO1iysnFIG0/w1200-h630-p-k-no-nu/Cirage+noir+Le+Marginal+Magnifique+se+frotter+la+bite+au+cirage.jpg"],
  ["Cracher dans le café de la victime", "Après une pizza de chez Marco", "https://www.jooks.fr/wp-content/uploads/2016/09/Unknown.jpeg"],
  ["Diffuser Lara Fabian dans des enceintes cacher chez la victime", "Le prix reflète l'effort fourni", "https://www.sortiraparis.com/images/1001/77381/476984-lara-fabian-a-l-olympia-en-2020-3.jpg"],
  ["Poser un piège à loups, sur la tête de la victime", "Penser à porter une blouse", "https://images.pexels.com/photos/4046869/pexels-photo-4046869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"],
  ["Mettre de la superglue sur la cuvette des toilettes", "Pire chez les victimes velues", "https://images.pexels.com/photos/3944410/pexels-photo-3944410.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"],
  ["Jeter un pot de peinture indélébile sur la victime", "Ne pas hésiter à demander le suppléments Plumes et Graviers", "https://d2xlsvqc2km4uk.cloudfront.net/live/desktop/images/destinations/brighton/activities/naked-body-painting-header.jpg"],
  ["Poil à gratter", "Favoriser le poil de loutre. Ou de phoque", "https://static.cnews.fr/sites/default/files/000_j56yw_5d7a4d6339d2c.jpg"]
]

puts "SECRET SEED: START CLEAR"
Booking.destroy_all
Review.destroy_all
Offer.destroy_all
User.destroy_all
puts "SECRET SEED: START POPULATE USERS"
wagonner = ["Titouan", "https://avatars3.githubusercontent.com/u/71375669?v=4"]
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
7.times do
  prank = pranks.sample
  target = users.reject{|user| user == titouan }.sample
  Offer.create!(
    title: prank[0],
    description: prank[1],
    price: Faker::Number.number(digits: 3),
    date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
    user: titouan,
    target: "#{target.first_name} #{target.last_name}",
    photo_url: Faker::LoremPixel.image(size: "50x50", is_gray: true)
  )
end
24.times do
  prank = pranks.sample
  bad_boy = users.reject{|user| user == titouan }.sample
  target = users.reject{|user| user == bad_boy || user == titouan}.sample
  Offer.create!(
    title: prank[0],
    description: prank[1],
    price: Faker::Number.number(digits: 3),
    date: Faker::Date.between(from: 30.days.ago, to: 30.days.from_now),
    user: bad_boy,
    target: "#{target.first_name} #{target.last_name}",
    photo_url: prank[3]
  )
end
puts "SECRET SEED: START POPULATE BOOKINGS"
Offer.all.shuffle.reject{|offer| offer.user == titouan || "#{titouan.first_name} #{titouan.last_name}" == offer.target}.first(5).each do |offer|
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: titouan,
    offer: offer
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: titouan,
        offer: offer
      )
    end
  end
end
Offer.all.shuffle.first(18).each do |offer|
  buyer = users.reject{|user| user == offer.user && "#{user.first_name} #{user.last_name}" == offer.target}.sample
  booking = Booking.new(
    status: [0, 1, 1, 1].sample,
    user: buyer,
    offer: offer,
  )
  if booking.save!
    unless booking.status
      Booking.new(
        status: 1,
        user: buyer,
        offer: offer
      )
    end
  end
end
puts "SECRET SEED: END POPULATE"
