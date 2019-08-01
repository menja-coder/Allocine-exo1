# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



=======Entrer "L'EXORCISTE" ET "OSS 117, Le Caire nid d'espions" en une seule ligne===========

Movie.create([{name: "L'EXORCISTE", year: 1974, genre: "Epouvante-horreur", synopsis: " Interdit aux moins de 12 ans.
 L'actrice Chris McNeil est inquiète au sujet de sa fillette Regan : après que l'on ait entendu des bruits curieux venant de sa chambre, la petite a changé, proférant de constantes insanités. Une force para-normale l'habite, qui coûte la vie au metteur en scène de Chris. Désespérée, cette dernière fait appel à deux exorcistes... ", director: "William Friedkin", allocine_string: 3.9, already_seen: false},{name: "OSS 117, Le Caire nid d'espions", year: 2006, genre: "Commedie, Action, Espionnage", synopsis: "Égypte, 1955, le Caire est un véritable nid d'espions.
Tout le monde se méfie de tout le monde, tout le monde complote contre tout le monde : Anglais, Français, Soviétiques, la famille du Roi déchu Farouk qui veut retrouver son trône, les Aigles de Kheops, secte religieuse qui veut prendre le pouvoir. Le Président de la République Française, Monsieur René Coty, envoie son arme maîtresse mettre de l'ordre dans cette pétaudière au bord du chaos : Hubert Bonisseur de la Bath, dit OSS 117." , director: "Michel Hazanavicius", allocine_string: 3.5, already_seen: false}])



Movie.create(name: "TITANIC", year: 1998, genre: " Drame, Romance", synopsis: "
A partir de 10 ans
Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le Titanic, appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.", director: "JAMES CAMERON", allocine_string: 4.3, my_rating: 5.0, already_seen: true)

============Modifie la note Allociné de Beowulf pour qu'elle soit à 4,7. ===============


beowulf = Movie.find_by(name: "BEOWULF")
beowulf.update(allocine_string: 4.7)


===============Modifie le genre de l'Exorciste pour que ça soit une comédie===============

exorciste = Movie.find(2)
exorciste.genre = "Commedie"
exorciste.save
===============Affiche, avec une commande en Movie.where, l'ensemble des films que tu as déjà vus.========================

film_seen = Movie.where(already_seen: true)
film_seen.all

===============supprime le premier de la BDD film_seen=============

film_seen.find_by(already_seen: true).destroy


==========================Le seed : aux BDD bien créées===========================
require 'faker'
100.times do
	Movie.create(name: Faker::Movie.quote, year: Faker::Date.between(from:1990, to:2020), 
		genre: Faker::Book.genre, 
		synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true), director: Faker::Name.name, 
		allocine_string: Faker::Number.between(from: 0, to: 5), already_seen: Faker::Boolean.boolean(true_ratio: 0))
end

puts "100 users added"





