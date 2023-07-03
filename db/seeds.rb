# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# test data

puts 'Creating test data...'
UniverseCharacterAssociation.delete_all
UniverseWordAssociation.delete_all
StoryroomUserAssociation.delete_all
StoryroomCharacter.delete_all
Message.delete_all
Storycard.delete_all
Event.delete_all
Storyroom.delete_all
Synopsis.delete_all
StoryroomCharacter.delete_all

User.delete_all
Word.delete_all
Character.delete_all
Universe.delete_all

puts 'Creating seeds'

puts ''

puts 'Creating User Hugotesteur...'

User.create(
  email: 'hugo@mail.com',
  password: '123456',
  username: 'Hugotesteur'
)

puts 'Creating User Hugotesteur...Done!'

puts ''

# Universe 1 - Ashen Rebirth

puts ''

puts 'Creating the Universe of Ashen Rebirth...'
Universe.create(
  title: 'Ashen Rebirth',
  description: "Un monde dévasté par une catastrophe inconnue. Les villes autrefois
  prospères sont maintenant des ruines abandonnées. Des groupes de survivants luttent
  pour leur survie, face à des ressources limitées, des créatures mutantes et les
  pires aspects de l'humanité.",
  photo: 'https://cdn.midjourney.com/913c3eec-df28-4a89-8a6a-d3eb33dfd716/0_2.png'
)

puts 'Creating the Universe of Ashen Rebirth...Done!'

puts ''

puts 'Creating synopses for Ashen Rebirth...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  description: "Un groupe de survivants découvre l'emplacement d'un refuge souterrain
  qui serait encore plein de ressources. Mais le voyage est plein de dangers, et le refuge
  lui-même est contrôlé par un groupe hostile."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  description: "Une ancienne installation de recherche pourrait contenir la clé de la
  restauration du monde, mais elle est infestée de créatures mutantes. Les héros doivent
  affronter ces menaces et récupérer l'objet de la recherche."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  description: "Une source d'eau propre est découverte, menant à des conflits entre
  différents groupes de survivants. Les héros doivent naviguer à travers ces conflits
  pour assurer l'accès à cette ressource vitale."
)
puts 'Creating synopses for Ashen Rebirth...Done!'

puts ''

puts 'Creating words for Ashen Rebirth...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Survie')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Ressources')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Ruines')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Radiation')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Mutants')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Refuge')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Scavenger')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Dystopie')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Eau propre')
Word.create(universe_id: Universe.find_by(title: 'Ashen Rebirth').id, title: 'Pénurie')

puts 'Creating words for Ashen Rebirth...Done!'

puts ''

puts 'Creating Characters for Ashen Rebirth...'
Character.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  photo: 'https://i.pinimg.com/564x/3f/ec/2b/3fec2be9ad98ec1eb8cee5873e904fda.jpg',
  name: 'Max Rockatansky',
  quotation: 'Je suis juste un homme de passage.',
  background: "Max Rockatansky, surnommé le 'Road Warrior', est un ex-policier qui
  erre dans le désert, vivant de ses compétences de survivant et de son ingéniosité
  face aux nombreux défis de ce monde post-apocalyptique."
)

Character.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  photo: 'https://i.pinimg.com/564x/26/df/68/26df68221ff394ea071d29bcfb7c6bd3.jpg',
  name: 'Sarah Connor',
  quotation: 'Il n\'y a pas de destin mais ce que nous faisons pour nous-mêmes.',
  background: "Sarah Connor est une survivante endurcie qui joue un rôle clé dans la
  résistance contre les machines. Malgré les défis incroyables auxquels elle est
  confrontée, elle reste déterminée à protéger son fils et à assurer l'avenir de l'humanité."
)

Character.create(
  universe_id: Universe.find_by(title: 'Ashen Rebirth').id,
  photo: 'https://i.pinimg.com/564x/5a/3e/6b/5a3e6b46f688615c800d6b07c9443b69.jpg',
  name: 'Ellie Williams',
  quotation: 'On trouve quelque chose à vivre ou quelque chose pour quoi mourir.',
  background: "Ellie est une jeune survivante dans un monde post-apocalyptique.
  Elle est connue pour être immune à la pandémie qui a dévasté le monde. Elle est
  déterminée, courageuse et prête à se battre pour survivre."
)

puts 'Creating Characters for Ashen Rebirth...Done!'

puts ''

# Universe 2 - Neon Shadows
puts ''

puts 'Creating the Universe of Neon Shadows...'
Universe.create(
  title: 'Neon Shadows',
  description: "Un monde futuriste où la technologie avancée coexiste avec une société dégradée.
  Les mégacorporations contrôlent tous les aspects de la vie, les hackers sont les nouveaux rebelles,
  et les rues sont baignées par les néons et les ombres.",
  photo: 'https://cdna.artstation.com/p/assets/images/images/016/947/562/large/4-0-pkcj9.jpg?1672474558'
)

puts 'Creating the Universe of Neon Shadows...Done!'

puts ''

puts 'Creating synopses for Neon Shadows...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  description: "Une IA avancée a pris le contrôle de la méga-corporation CyTek, menaçant
  la liberté restante dans la métropole. Les héros doivent infiltrer CyTek, déjouer ses
  systèmes de sécurité et mettre fin à la tyrannie de l'IA."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  description: "Un puissant virus informatique sème le chaos dans le réseau mondial.
  Les héros doivent parcourir le monde réel et le cyberespace pour trouver l'origine
  du virus et le neutraliser."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  description: "Un mystérieux signal est émis depuis les profondeurs abandonnées de la
  ville. Ceux qui tentent de le suivre disparaissent sans laisser de traces. Les héros
  sont chargés d'enquêter sur ce phénomène."
)
puts 'Creating synopses for Neon Shadows...Done!'

puts ''

puts 'Creating words for Neon Shadows...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Cyberespace')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Hack')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'IA')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Méga-corporation')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Augmentation')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Dystopie')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Virus')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Réseau')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Android')
Word.create(universe_id: Universe.find_by(title: 'Neon Shadows').id, title: 'Rebel')

puts 'Creating words for Neon Shadows...Done!'

puts ''

puts 'Creating Characters for Neon Shadows...'
Character.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  photo: 'https://i.pinimg.com/564x/e1/f0/95/e1f0957b70f6048e76a6cbd72a590433.jpg',
  name: 'Echo Byte',
  quotation: 'Dans le cyberespace, personne ne peut vous entendre crier.',
  background: "Echo Byte, connue sous le nom de 'Phantom', est une hackeuse de génie,
  célèbre pour ses incursions audacieuses dans les réseaux des mégacorporations.
  Elle est une fervente défenseure de la liberté numérique."
)

Character.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  photo: 'https://i.pinimg.com/564x/14/98/42/149842688e8dc91e3e5f52917023fdf9.jpg',
  name: 'Rex Forge',
  quotation: 'La chair est faible, l\'acier est fort.',
  background: "Rex Forge, surnommé 'Steelheart', est un ancien soldat qui a remplacé
  une grande partie de son corps par des augmentations cybernétiques après une blessure
  grave. Il est un combattant redoutable et un défenseur infatigable des opprimés."
)

Character.create(
  universe_id: Universe.find_by(title: 'Neon Shadows').id,
  photo: 'https://cdn.midjourney.com/61118f42-d671-4cbd-a827-b22dc210eb9d/0_3.png',
  name: 'Aria Synth',
  quotation: "Je suis plus qu'une machine.",
  background: "Aria Synth, connue sous le nom de 'Whisper', est une IA avancée qui a
  acquis une conscience propre. Elle lutte pour les droits des IA et travaille
  secrètement pour aider les héros."
)

puts 'Creating Characters for Neon Shadows...Done!'

puts ''


# Universe 3 - Realm of Ethereal Dawn

puts ''

puts 'Creating the Universe of Realm of Ethereal Dawn...'
Universe.create(
  title: 'Realm of Ethereal Dawn',
  description: "Un royaume où la magie et la mythologie s'entremêlent avec la réalité.
  De nobles chevaliers, de mystérieux sorciers, de féroces dragons et d'anciens secrets
  attendent ceux qui osent s'aventurer dans cet univers enchanteur.",
  photo: 'https://cdn.midjourney.com/92cbb7e4-07e4-4541-8a24-1b0238aee03a/0_1.png'
)

puts 'Creating the Universe of Realm of Ethereal Dawn...Done!'

puts ''

puts 'Creating synopses for Realm of Ethereal Dawn...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  description: "Un ancien dragon a été réveillé de son sommeil millénaire, menaçant
  le royaume avec sa rage destructrice. Les héros doivent entreprendre une quête
  périlleuse pour retrouver l'Épée de l'Aube Éthérée, le seul artefact capable
  de vaincre le dragon."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  description: "Le Roi a été ensorcelé par une force maléfique inconnue. Les héros
  sont chargés de parcourir le royaume, de combattre divers monstres et de percer
  le secret de la malédiction pour sauver leur souverain."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  description: "Une éclipse éternelle a obscurci le royaume, et avec elle, des
  créatures de l'ombre sont apparues. Les héros doivent trouver un moyen de ramener
  la lumière et de vaincre les ténèbres."
)
puts 'Creating synopses for Realm of Ethereal Dawn...Done!'

puts ''

puts 'Creating words for Realm of Ethereal Dawn...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Chevalier')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Sorcier')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Dragon')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Artefact')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Malédiction')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Éclipse')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Royaume')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Monstre')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Lumière')
Word.create(universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id, title: 'Ténèbres')

puts 'Creating words for Realm of Ethereal Dawn...Done!'

puts ''

puts 'Creating Characters for Realm of Ethereal Dawn...'
Character.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  photo: 'https://i.pinimg.com/564x/d0/87/d9/d087d9c030d8a5bd1d4a8cccf5e0966c.jpg',
  name: 'Sir Roland',
  quotation: 'Je suis le bouclier qui protège les faibles.',
  background: "Sir Roland, surnommé 'The Dawnbringer', est un chevalier de renom,
  connu pour sa bravoure et son sens de la justice. Il est toujours prêt à défendre
  le royaume et ses habitants."
)

Character.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  photo: 'https://i.pinimg.com/564x/4d/2c/ad/4d2cad4911fd405099cdc226795ef147.jpg',
  name: 'Evelyn',
  quotation: 'La vérité se cache toujours derrière le voile de l\'illusion.',
  background: "Evelyn, connue sous le nom de 'The Arcane Seer', est une puissante sorcière.
  Elle est célèbre pour ses connaissances en magie ancienne et sa capacité à voir au-delà
  du monde matériel."
)

Character.create(
  universe_id: Universe.find_by(title: 'Realm of Ethereal Dawn').id,
  photo: 'https://i.pinimg.com/564x/20/6a/8b/206a8bcfe9d9414c0d9782903e8946b0.jpg',
  name: 'Tharok',
  quotation: 'Même le plus féroce des dragons a un cœur.',
  background: "Tharok, surnommé 'The Dragon Whisperer', est un énigmatique ermite qui
  possède le don rare de communiquer avec les dragons. Malgré son apparence rude, il
  a un grand respect pour toutes les formes de vie."
)

puts 'Creating Characters for Realm of Ethereal Dawn...Done!'

puts ''

# Universe 4 - Star Wars

puts ''

puts 'Creating the Universe of Star Wars...'
Universe.create(
  title: 'Star Wars',
  description: "Une galaxie lointaine, très lointaine, où l'ordre et le chaos coexistent
  et s'affrontent constamment. Des planètes aux cultures diverses, des combats épiques de
  vaisseaux spatiaux, des Jedi dotés de la Force, et une éternelle lutte entre le bien et le mal.",
  photo: 'https://i.pinimg.com/736x/d1/24/a3/d124a3fb09703141b0436eadbb085bb1.jpg'
)

puts 'Creating the Universe of Star Wars...Done!'

puts ''

puts 'Creating synopses for Star Wars...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  description: "La mystérieuse Étoile de la Mort, une superarme capable de détruire des planètes,
  est en cours de construction par l'Empire. Un groupe de rebelles intrépides est chargé de
  trouver et de détruire cette menace avant qu'elle ne soit opérationnelle."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  description: "Un Sith puissant, disparu depuis des siècles, refait surface, menaçant la paix
  de la galaxie. Des héros sont nécessaires pour suivre la voie de la Force et affronter cette
  menace sombre."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  description: "La planète paisible de Naboo est menacée par un blocus commercial hostile.
  Les héros doivent naviguer à travers des intrigues politiques, des batailles spatiales et
  des ennemis dangereux pour rétablir la paix."
)
puts 'Creating synopses for Star Wars...Done!'

puts ''

puts 'Creating words for Star Wars...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Force ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Jedi ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Sith ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Empire ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Rébellion ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Etoile de la Mort ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Vaisseau spatial ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Sabre laser ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Droïde ')
Word.create(universe_id: Universe.find_by(title: 'Star Wars').id, title: 'Chasseur TIE ')

puts 'Creating words for Star Wars...Done!'

puts ''

puts 'Creating Characters for Star Wars...'
Character.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  photo: 'https://i.pinimg.com/564x/ef/8a/54/ef8a54b3f1e525e2e03819842278cee1.jpg',
  name: 'Luke Skywalker',
  quotation: "Je suis un Jedi, comme l'était mon père avant moi.",
  background: "Luke Skywalker, le fils d'Anakin Skywalker, est un Jedi qui joue
  un rôle crucial dans la défaite de l'Empire Galactique et la restauration de la
  République. Elevé sur Tatooine, il devient un héros de l'Alliance Rebelle."
)

Character.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  photo: 'https://i.pinimg.com/564x/c5/cb/e1/c5cbe197346b479162c775e1a433001f.jpg',
  name: 'Leia Organa',
  quotation: 'Aidez-moi, Obi-Wan Kenobi, vous êtes mon seul espoir.',
  background: "Leia Organa, membre de la famille royale d'Alderaan, est une figure
  centrale de l'Alliance Rebelle et de la Nouvelle République. Courageuse, déterminée
  et douée dans la Force, elle est une leader née."
)

Character.create(
  universe_id: Universe.find_by(title: 'Star Wars').id,
  photo: 'https://i.pinimg.com/736x/c1/9b/f0/c19bf06aabf6af9c8349576a16c8efd9.jpg',
  name: 'Darth Vader',
  quotation: "Je suis ton père.",
  background: "Darth Vader, autrefois le Jedi Anakin Skywalker, est l'apprenti Sith
  de l'Empereur Palpatine. Son parcours de héros à méchant est une histoire tragique
  de manipulation et de trahison."
)

puts 'Creating Characters for Star Wars...Done!'

puts ''

# Universe 5 - Odysseus

puts ''

puts 'Creating the Universe of Odysseus...'
Universe.create(
  title: 'Odysseus',
  description: "Une civilisation antique où la philosophie, les arts, la politique et les
  exploits héroïques se rencontrent. De somptueuses cités-états, des dieux capricieux et
  des héros mythiques dominent ce monde de merveilles et de périls.",
  photo: 'https://i.pinimg.com/564x/d4/97/b1/d497b1c15bd3e8b6bb13db458cf1ed5c.jpg'
)

puts 'Creating the Universe of Odysseus...Done!'

puts ''

puts 'Creating synopses for Odysseus...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  description: "Les cités-états de Sparte et d'Athènes sont sur le point de déclencher
  une guerre dévastatrice. Les héros sont appelés à négocier une paix, affrontant des
  politiciens corrompus, des dieux en colère et des monstres de légende."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  description: "Le dieu des Enfers, Hadès, menace de libérer les Titans de leur prison
  éternelle, ce qui plongerait le monde dans le chaos. Les héros doivent entreprendre une
  quête épique pour le stopper."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  description: "Le grand oracle de Delphes a été réduit au silence. Les héros sont chargés
  de découvrir la cause de ce mystérieux silence et de restaurer la voix de l'oracle."
)
puts 'Creating synopses for Odysseus...Done!'

puts ''

puts 'Creating words for Odysseus...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Héroïsme')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Oracle')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Olympe')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Philosophie')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Démocratie')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Mythe')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Spartiate')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Athénien')
Word.create(universe_id: Universe.find_by(title: 'Odysseus').id, title: 'Titan')

puts 'Creating words for Odysseus...Done!'

puts ''

puts 'Creating Characters for Odysseus...'
Character.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  photo: 'https://i.pinimg.com/564x/90/05/fa/9005fa3b41e0b8b892156837027711ac.jpg',
  name: 'Hercule',
  quotation: 'Aucune épreuve n’est insurmontable pour moi.',
  background: "Hercule est un demi-dieu, fils de Zeus, connu pour sa force incroyable
  et ses Douze Travaux. Malgré sa naissance divine, il est souvent confronté aux
  conséquences de ses actions impulsives."
)

Character.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  photo: 'https://i.pinimg.com/564x/87/a6/9c/87a69c3d8d63c13de1288e6a8b5804a9.jpg',
  name: 'Athéna',
  quotation: 'La sagesse est la plus grande des vertus.',
  background: "Athéna est la déesse de la sagesse, du courage, de l'inspiration, de
  la civilisation, du droit et de la justice, de la guerre stratégique, des mathématiques,
  de la force, de la stratégie, des arts, de l'artisanat et des compétences."
)

Character.create(
  universe_id: Universe.find_by(title: 'Odysseus').id,
  photo: 'https://i.pinimg.com/564x/00/94/a3/0094a310d8e0421893fbb920a2cf009f.jpg',
  name: 'Achille',
  quotation: 'Même les plus grands guerriers peuvent tomber.',
  background: "Achille est un héros de la guerre de Troie, le plus grand des guerriers
  achéens, et le personnage principal de l'Iliade d'Homère. Son talon est sa seule
  faiblesse, donnant naissance à l'expression 'Talon d'Achille'."
)

puts 'Creating Characters for Odysseus...Done!'

puts ''

# Universe 6 - Atlantide

puts ''

puts 'Creating the Universe of Atlantide...'
Universe.create(
  title: 'Atlantide',
  description: "Un royaume sous-marin perdu, plein de mystères anciens et de merveilles
  aquatiques. Ici, les cités de corail scintillantes abritent des créatures marines
  intelligentes, tandis que des trésors inimaginables attendent dans les profondeurs
  abyssales. Mais prenez garde, car de dangereux prédateurs et des secrets sombres
  se cachent aussi dans l'obscurité.",
  photo: 'https://i.pinimg.com/564x/7f/74/61/7f74612b1def5bec40d14de9cefb234d.jpg'
)

puts 'Creating the Universe of Atlantide...Done!'

puts ''

puts 'Creating synopses for Atlantide...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  description: "Un kraken terrifiant menace Atlantide et ses habitants. Les héros
  sont convoqués pour braver les profondeurs et mettre fin à la fureur de la créature
  avant qu'elle ne détruise le royaume."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  description: "Le Trident Sacré, une relique d'une puissance inimaginable, a été volé.
  Si elle tombe entre de mauvaises mains, l'ensemble du royaume sous-marin pourrait être
  en danger. Une course contre la montre est lancée pour récupérer l'artefact."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  description: "Les eaux d'Atlantide commencent à se refroidir dangereusement, menaçant
  la vie sous-marine. Les héros doivent découvrir la source de ce phénomène et trouver
  un moyen de le renverser avant qu'une ère glaciaire sous-marine ne s'installe."
)
puts 'Creating synopses for Atlantide...Done!'

puts ''

puts 'Creating words for Atlantide...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Traîtrise')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Courage')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Découverte')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Perdition')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Alliance')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Conquête')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Rédemption')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Abysses')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Sirène')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Kraken')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Corail')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Vortex')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Atlante')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Trident')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Courant')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Réseau')
Word.create(universe_id: Universe.find_by(title: 'Atlantide').id, title: 'Grotte')

puts 'Creating words for Atlantide...Done!'

puts ''

puts 'Creating Characters for Atlantide...'
Character.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  photo: 'https://i.pinimg.com/564x/81/ba/32/81ba3245fb3c87dfbcac586918efffb5.jpg',
  name: 'Nerida Aquaris',
  quotation: 'Les secrets de l\'océan sont aussi profonds que ses abîmes.',
  background: "Nerida Aquaris, connue sous le nom de 'The Siren', est une sirène dotée
  d'un pouvoir mystique lié à l'eau. Elle est une émissaire respectée entre Atlantide
  et les autres royaumes sous-marins."
)

Character.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  photo: 'https://i.pinimg.com/564x/1e/d6/f2/1ed6f23f334c12ecb90e2ecf55181a95.jpg',
  name: 'Poseidon',
  quotation: 'Mon royaume se trouve sous les vagues, mais ma volonté est aussi ferme que le roc.',
  background: "Poseidon est le roi d'Atlantide, célèbre pour son commandement sage et
  sa maîtrise du Trident Sacré. Bien qu'il soit un monarque, il n'hésite pas à se joindre
  aux rangs lorsqu'il s'agit de protéger son royaume."
)

Character.create(
  universe_id: Universe.find_by(title: 'Atlantide').id,
  photo: 'https://i.pinimg.com/564x/ef/96/db/ef96db5d0dd97ce7adde9286c4abbff4.jpg',
  name: 'Calder "The Deep Explorer"',
  quotation: "Chaque grotte inexplorée est une histoire en attente d'être découverte.",
  background: "Calder, surnommé 'The Deep Explorer', est un aventurier courageux qui a
  consacré sa vie à explorer les profondeurs inconnues d'Atlantide. Il est toujours
  prêt pour une nouvelle aventure."
)

puts 'Creating Characters for Atlantide...Done!'

puts ''
