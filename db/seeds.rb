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
puts 'DB Cleaned!'

# puts ''
# puts 'Creating Universes...'
# Universe.create(
#   title: 'Glaciarift',
#   description: 'Les signes étaient partouts, mais nous les avons ignorés. Il y a ..., une série de catastrophes
#   naturelles frappa le monde, la population mondiale fu décimée. Nous avons rassemblé ... personnes et avons créé
#   ensemble une communauté dans ...',
#   photo: 'https://cdn.midjourney.com/7762621f-8a83-4c8c-9144-e6682391afd5/0_3.png'
# )
# Universe.create(
#   title: 'Night City',
#   description: 'Cette ville est corrompue et dominée par les corporations, le crime et la violence des gangs.
#   En 2020, Night City est une métropole en pleine croissance mais toujours en proie à la violence et à la criminalité,
#   et devient le champ de bataille de la Quatrième Guerre Corporatiste en 2022.',
#   photo: 'https://www.cyberpunk.net/build/images/bg-e58858b3.jpg'
#   # photo: 'https://cdn.midjourney.com/29532fea-ce89-42e4-942c-1aacdb880102/0_0.png'
# )
# Universe.create(
#   title: 'Desaride',
#   description: 'Un univers de désert et de sable. Les populations luttent pour leur survie et les ressources.
#   Le pétrol est la clé du transport et de la survie.',
#   photo: 'https://cdn.midjourney.com/d4d1c489-9260-4aee-943d-e9bccca4f226/0_3.png'
# )
# Universe.create(
#   title: 'Blocean',
#   description: 'Un univers d\'eau et d\'ilots',
#   photo: 'https://cdn.midjourney.com/1118471a-abec-4d86-86aa-0cd3308a93f6/0_1.png'
# )
# puts 'Universes created!'

# puts ''
# puts 'Creating synopses...'
# puts 'Creating synopses for Night City...'
# Synopsis.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   description: 'Arasak a fait ... Je suis désormais en danger. Il me faut trouver ... pour ...'
# )
# Synopsis.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   description: 'Il y a beaucoup d\'argent dans ... Je vais monter une équipe pour ....'
# )
# puts 'Creating synopses for Night City... done!'

# puts 'Creating synopses for Desaride...'
# Synopsis.create(
#   universe_id: Universe.find_by(title: 'Desaride').id,
#   description: 'Nous allons rechercher ... dans ....'
# )
# puts 'Creating synopses for Desaride... done!'
# puts 'Creating synopses... Done!'


# puts ''
# puts 'Creating words...'
# Word.create(title: 'Espoire')
# Word.create(title: 'Trahison')
# Word.create(title: 'Amour')
# Word.create(title: 'Avalanche')
# Word.create(title: 'Rencontre')
# Word.create(title: 'Trahison')
# Word.create(title: 'Découverte')
# Word.create(title: 'Victoire')
# Word.create(title: 'Défaite')
# Word.create(title: 'Naissance')
# Word.create(title: 'Mort')
# Word.create(title: 'Mariage')
# Word.create(title: 'Divorce')
# Word.create(title: 'Révélation')
# Word.create(title: 'Conflit')
# Word.create(title: 'Résolution')
# puts 'words created!'

# puts ''
# puts 'Creating Characters...'
# Character.create(
#   photo: '',
#   name: 'Olaf le viking',
#   quotation: 'Je m\'appel... J\'ai...ans. Je suis doué pour...',
#   background: '...',
#   age: 30
# )
# Character.create(
#   name: 'Erug',
#   quotation: 'Les profondeurs détiennent des secrets que l\'homme ne peut comprendre.',
#   background: 'Né de l\'union d\'une sirène et d\'un marin, Erug incarne la frontière entre les hommes et les créatures marines. Ses écailles luisantes et sa capacité à respirer sous l\'eau témoignent de son héritage marin, tandis que son humanité se manifeste dans son désir de paix entre ces deux mondes. Sa connaissance profonde de la mer et de ses secrets lui permet d\'être un ambassadeur naturel, travaillant sans relâche à la coexistence pacifique entre les êtres humains et les habitants des profondeurs.'
# )

# puts 'Creating Characters... for Night City'
# Character.create(
#   name: 'Adam Smasher',
#   quotation: 'Harg!',
#   background: 'Adam Smasher est un cyberpunk assez typique, un bon à rien
#   new yorkais qui a grandi dans la rue et s\'est spécialisé dans la violence
#   appliquée. Cela dit, il a toujours su s\'adapter ; c\'est pourquoi il est
#   rentré dans l\'Armée de Terre dès que son gang s\'est fait décimer.
#   Ayant porté l\'uniforme pendant plusieurs années, il s\'est libéré de ses
#   obligations militaires (il a été renvoyé pour mauvaise conduite) et est
#   devenu tueur à gages à New York. ',
#   photo: 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/10/Cyberpunk-2077-Adam-Smasher.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5'
# )
# Character.create(
#   name: 'Johnny Silverhand',
#   quotation: 'Samouraï, réveille-toi, bordel, nous avons une ville à brûler !',
#   background: 'ohnny Silverhand, né sous le nom de Robert John Linder, est un
#   homme que tout le monde connaît en Amérique. Un ancien militaire américain
#   qui a fait du mouvement rockerboy ce qu\'il est aujourd\'hui.',
#   photo:'https://static1.thegamerimages.com/wordpress/wp-content/uploads/2021/01/cyberpunk-2077-johnny-silverhand-glasses.jpg'
# )


# puts 'Characters created!'

# puts ''
# puts 'Creating Universe_character_associations...'
# puts 'Creating Universe_character_associations... for Glaciarift'
# UniverseCharacterAssociation.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   character_id: Character.find_by(name: 'Olaf le viking').id)
# puts 'Creating Universe_character_associations... for Glaciarift done!'

# puts 'Creating Universe_character_associations... for Blocean'
# UniverseCharacterAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   character_id: Character.find_by(name: 'Erug').id)
# puts 'Creating Universe_character_associations... for Blocean done!'

# puts''
# puts 'Creating Universe_character_associations... for Night City'
# UniverseCharacterAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   character_id: Character.find_by(name: 'Adam Smasher').id)
# UniverseCharacterAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   character_id: Character.find_by(name: 'Johnny Silverhand').id)
#   puts 'Creating Universe_character_associations... for Night City'

# puts 'Universe_character_associations created!'

# puts ''
# puts 'Creating Universe_word_associations...'
# puts 'Creating Universe_word_associations... for Glaciarift'
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   word_id: Word.find_by(title: 'Espoire').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   word_id: Word.find_by(title: 'Trahison').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   word_id: Word.find_by(title: 'Amour').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   word_id: Word.find_by(title: 'Avalanche').id
# )
# puts 'Creating Universe_word_associations... for Glaciarift done!'

# puts 'Creating Universe_word_associations... for Blocean'
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Rencontre').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Trahison').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Découverte').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Victoire').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Défaite').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Naissance').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Blocean').id,
#   word_id: Word.find_by(title: 'Mort').id
# )
# puts 'Creating Universe_word_associations... for Blocean done!'

# puts 'Creating Universe_word_associations... for Night City'
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   word_id: Word.find_by(title: 'Mariage').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   word_id: Word.find_by(title: 'Divorce').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   word_id: Word.find_by(title: 'Révélation').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   word_id: Word.find_by(title: 'Conflit').id
# )
# UniverseWordAssociation.create(
#   universe_id: Universe.find_by(title: 'Night City').id,
#   word_id: Word.find_by(title: 'Résolution').id
# )
# puts 'Creating Universe_word_associations... for Night City done !'

# puts 'Universe_word_associations created!'

# puts ''

puts 'Creating User...'

User.create(
  email: 'hugo@mail.com',
  password: '123456',
  username: 'Hugotesteur'
)

# User.create(
#   email: 'bravo@mail.com',
#   password: '123456',
#   username: 'bravotesteur'
# )

# User.create(
#   email: 'charlie@mail.com',
#   password: '123456',
#   username: 'charlietesteur'
# )

# puts 'User created!'

# puts ''

# puts 'Creating Storyroom...'
# Storyroom.create(
#   universe_id: Universe.find_by(title: 'Glaciarift').id,
#   title: 'la voie givrée',
#   user_id: User.find_by(username: 'Hugotesteur').id
# )

# Storyroom.create(
#   universe_id: Universe.find_by(title: 'Desaride').id,
#   title: 'L\'épée ardante',
#   user_id: User.find_by(username: 'charlietesteur').id

# )
# puts 'Storyroom created!'

# puts ''

# puts 'Creating Storyroom_characters...'
# puts 'Creating Storyroom_characters... for Desaride'
# StoryroomCharacter.create(
#   storyroom_id: Storyroom.find_by(title: 'L\'épée ardante').id,
#   photo: Character.find_by(name: 'Olaf le viking').photo,
#   name: 'Max',
#   quotation: 'Rage de vaincre',
#   background: 'J\'ai été prisonnier dans le désert. Je suis doué avec les véhicules.',
#   age: 30
# )
# puts 'Creating Storyroom_characters... for Desaride Done!'


# puts ''
# puts 'Creating Storyroom_user_associations...'
# StoryroomUserAssociation.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   user_id: User.find_by(username: 'Hugotesteur').id
# )
# StoryroomUserAssociation.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   user_id: User.find_by(username: 'bravotesteur').id
# )
# StoryroomUserAssociation.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   user_id: User.find_by(username: 'charlietesteur').id
# )
# puts 'Creating Storyroom_user_associations... done!'

# puts ''
# puts 'Creating Message...'
# Message.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   user_id: User.find_by(username: 'Hugotesteur').id,
#   content: 'Il était une fois...'
# )
# puts 'Message created!'


# puts ''
# puts 'Creating Storycard...'
# Storycard.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   title: Storyroom.find_by(title: 'la voie givrée').universe.words[0].title
# )

# Storycard.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   title: Storyroom.find_by(title: 'la voie givrée').universe.words[1].title
# )

# Storycard.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   title: Storyroom.find_by(title: 'la voie givrée').universe.words[2].title
# )

# puts 'Storycard created!'

# puts ''
# puts 'Creating Event...'
# Event.create(
#   storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
#   word_id: Word.find_by(title: Storycard.all[0].title).id,
#   dice_value: 20,
#   description: 'très favorable !'
# )

# puts 'Event created!'



puts ''
puts 'Creating seeds V2'
puts ''
puts 'Creating the Universe of ZombieLand...'
Universe.create(
  title: 'ZombieLand',
  description: " Depuis le début de l'apocalypse zombie, les pays et les gouvernements
  tels que nous les connaissons ont cessé d'exister. Les grandes villes sont devenues
  des territoires infestés de zombies, des zones mortes où seule la loi du plus fort prévaut.

  La nature a repris ses droits, recouvrant les gratte-ciels de lianes, de mousse
  et d'arbres. Les animaux sauvages, débarrassés de la menace humaine, prospèrent,
  ajoutant un niveau supplémentaire de danger à un monde déjà hostile.",
  photo: 'https://cdn.midjourney.com/f72106fd-87c7-4726-9853-0e88a15c45a7/0_3.png'
)

puts 'Creating the Universe of ZombieLand...Done!'

puts 'Creating synopses for ZombieLand...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  description: 'Il y a maintenant ... , les morts ont commencé à se relever
  de leur tombe. Les institutions telles que nous les connaissons ont été
  bouleversées à mesure que les zombies envahissaient le monde. Nous avons
  rassemblé ... personne et avons créé ensemble une communauté dans ....'
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  description: "Dans la solitude de ... , nous avons découvert un laboratoire
  abandonné, sa conception trahissant ... années de technologie avancée. Les
  journaux de bord indiquent la possibilité d'un remède pour l'infection zombie,
  mais les éléments clés sont manquants. Nous avons ... jours pour retrouver ces
  éléments avant que notre communauté ne soit submergée par une horde de zombies
  en approche."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  description: "Nous avons entendu parler d'un refuge sûr dans ... , mais il
  est à ... jours de marche. Nous devons nous préparer à un voyage périlleux à
  travers ... , en évitant les hordes de zombies et les pillards."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  description: "Après des mois de survie, notre communauté dans ... a reçu un
  signal radio faible mais clair : une colonie de survivants à ... . Le voyage
  est risqué, plein de zombies et d'autres dangers, mais l'espoir d'une civilisation
  renouvelée nous pousse à préparer ... membres de notre groupe pour ce voyage."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  description: "Un orage brutal a ravagé notre communauté, détruisant nos
  réserves de nourriture et laissant ... des nôtres blessés. Dans ... jours,
  une autre tempête est prévue. Nous devons reconstruire, guérir et renouveler
  nos réserves avant qu'elle n'arrive."
)
puts 'Creating synopses for ZombieLand...Done!'

puts 'Creating words for ZombieLand...'

Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Espoire')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Trahison')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Amour')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Découverte')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Perdu')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Arme')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Menace')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Compagnon')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Animal')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Abimé')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Nature')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Infection')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Blessures')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Vol')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Culpabilité')
Word.create(universe_id: Universe.find_by(title: 'ZombieLand').id, title: 'Chaos')

puts 'Creating words for ZombieLand...Done!'

puts 'Creating Characters for ZombieLand...'
Character.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  photo: 'https://cdn.midjourney.com/d4f3c7a1-e0e5-43ad-9030-d41ecc8e60e1/0_2.png',
  name: 'Docteur Evelyn "Eve" Morales',
  quotation: "Dans ce monde de morts-vivants, je suis plus déterminée que jamais
  à préserver la vie.",
  background: "Docteur avant le cataclysme, Eve a toujours été animée par un fort
  désir d'aider les autres. Elle a gardé une partie de son ancienne vie en restant
  le médecin de la communauté, se débrouillant avec des ressources limitées pour
  soigner et aider à survivre. Elle est compassionnée, mais aussi pragmatique,
  sachant quand prendre des décisions difficiles pour le bien de tous. Incarner
  Eve implique de faire face à des dilemmes moraux, de gérer les ressources médicales
  et de faire preuve de leadership dans les situations de crise."
)
Character.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  photo: 'https://cdn.midjourney.com/ea059e40-ab5d-4ec1-9642-f8eaf4344fab/0_3.png',
  name: 'Karl "Ghost" Jenkins',
  quotation: "Dans le silence, on survit. Dans l'ombre, on attaque.",
  background: "Ancien membre des forces spéciales, Karl est un expert en infiltration
  et en survie. Il a un caractère taciturne et une attitude stoïque, préférant
  la compagnie de ses armes à celle des gens. Il est cependant extrêmement loyal
  envers ceux qu'il considère comme son équipe. Incarner Karl signifie exceller
  dans les situations de combat et d'exploration, prendre des décisions stratégiques
  et gérer les conflits internes avec peu de mots, mais beaucoup d'action.",
)
Character.create(
  universe_id: Universe.find_by(title: 'ZombieLand').id,
  photo: 'https://cdn.midjourney.com/94a06b14-bcc5-467f-9e9a-126f9bdcbbf2/0_2.png',
  name: 'Maya "Spark" Gupta',
  quotation: "Même dans l'obscurité, une étincelle peut illuminer le monde.",
  background: "Maya était une ingénieure talentueuse avant l'apocalypse et a depuis
  utilisé ses compétences pour maintenir et améliorer la vie dans la communauté.
  Elle est optimiste et persévérante, voyant chaque problème comme une occasion
  d'apprendre et de s'améliorer. Elle a un humour pince-sans-rire qui apporte de
  la légèreté même dans les moments les plus sombres. Incarner Maya signifie se
  confronter à des défis techniques, innover avec des ressources limitées, et
  apporter de l'espoir et de la lumière à la communauté.",
)

puts 'Creating Characters for Night City...Done!'

# Universe 2 - Night City

puts ''
puts 'Creating the Universe of Night City...'
Universe.create(
  title: 'Night City',
  description: " Night City est un labyrinthe de néons et d'acier, toujours animé
  par le chaos technologique. Des gratte-ciels futuristes percent un ciel obscurci
  par la pollution, tandis que drones et véhicules high-tech sillonnent ses rues
  trépidantes. Sous l'éclat de la modernité se cache une guerre silencieuse, où
  corporations, gangs et rebelles se disputent chaque fragment de pouvoir.",
  photo: 'https://cdn.midjourney.com/1c4c25e2-a9e9-4e55-a3dc-9d9786f1a92a/0_0.png'
)

puts 'Creating the Universe of Night City...Done!'

puts 'Creating synopses for Night City...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  description: "Dans les méandres de Night City, une mystérieuse puce de données
  contenant des informations potentiellement dévastatrices pour l'une des plus
  grandes corporations a été volée. Les personnages, des mercenaires du cyberespace,
  sont engagés pour retrouver et sécuriser cette puce."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  description: "Un groupe de rebelles tente de déstabiliser l'équilibre du pouvoir
  à Night City en ciblant les corporations omnipotentes. Les personnages, nouveaux
  venus dans le groupe, sont chargés de réaliser une série de missions cruciales
  pour assurer le succès de cette rébellion."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  description: "Une série de disparitions inexplicables secoue les bas-fonds de
  Night City. Les personnages, des détectives privés cybernétiquement améliorés,
  sont engagés pour résoudre ces mystérieux cas et découvrir la vérité qui se
  cache derrière eux."
)
puts 'Creating synopses for Night City...Done!'

puts 'Creating words for Night City...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Trahison')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Alliance')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Conquête')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Rencontre')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Découverte')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Catastrophe')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Révolution')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Invasion')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Évasion')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Résurrection')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Hameçonnage')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Piratage')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Cyberattaque')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Augmentation')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Surcharge')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Déconnexion')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Rébellion')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Infiltration')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Transhumanisme')
Word.create(universe_id: Universe.find_by(title: 'Night City').id, title: 'Techno-anarchie')

puts 'Creating words for Night City...Done!'

puts 'Creating Characters for Night City...'
Character.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  photo: 'https://cdn.midjourney.com/79eb7a2c-393e-41e3-a5e7-b772c602c0fd/0_2.png',
  name: 'Astra "Nova" Kovač',
  quotation: "Dans cette ville, soit tu te bats pour la liberté, soit tu deviens
  esclave de la technologie.",
  background: "Astra, surnommée Nova, est une rebelle cybernétique au passé
  mystérieux, toujours prête à se battre pour la justice dans un monde gouverné
  par des corporations sans scrupules. Douée d'un esprit vif et d'un corps amélioré
  par des augmentations cybernétiques, elle utilise son habileté au piratage et
  ses compétences de combat pour s'opposer aux oppresseurs."
)
Character.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  photo: 'https://cdn.midjourney.com/727fdd2a-6bd4-4a09-a04e-5a7f44708105/0_1.png',
  name: 'Dr. Eli "Echo" Finch',
  quotation: "La technologie est un outil, pas un maître. C'est à nous de décider
  comment nous l'utilisons.",
  background: "Le Dr Eli Finch, alias Echo, est un brillant bio-ingénieur qui a
  dédié sa vie à l'amélioration de la vie des citoyens de Night City grâce à des
  augmentations accessibles et sûres. Malgré le chaos qui règne, il reste un
  phare de compassion et de détermination, toujours prêt à utiliser son intelligence
  et son ingéniosité pour faire la différence.",
)
Character.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  photo: 'https://cdn.midjourney.com/3ef1a977-396f-477a-b7b9-f83ed3890561/0_3.png',
  name: 'Vega "Viper" Torres',
  quotation:  "Dans les rues de Night City, seule la plus forte survit. Et je
  compte bien être celle-là.",
  background: " Vega, connue sous le nom de Viper, est une mercenaire impitoyable,
  aussi célèbre pour sa précision mortelle que pour son indifférence envers les
  règles. Équipée d'une panoplie d'armes high-tech et d'une attitude à toute
  preuve, elle navigue dans la jungle urbaine avec une assurance inébranlable,
  toujours prête à accepter le prochain contrat.",
)

puts 'Creating Characters for Night City...Done!'

# Universe 3 - Eldoria

puts ''
puts 'Creating the Universe of Eldoria...'
Universe.create(
  title: 'Eldoria',
  description: "Un continent vibrant de magie où des cités flottantes côtoient
  d'anciennes forêts enchantées et des montagnes peuplées de dragons. Chaque
  ruine, chaque donjon regorge de trésors inestimables et de dangers insoupçonnés,
  promettant à ceux qui osent s'y aventurer une quête épique.",
  photo: 'https://cdn.midjourney.com/1178bee8-6f8c-4143-b796-2c746a393663/0_2.png'
)

puts 'Creating the Universe of Eldoria...Done!'

puts 'Creating synopses for Eldoria...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  description: "Une prophétie antique annonce le retour d'un dragon maléfique endormi sous les Montagnes Murmurantes, menaçant de plonger Eldoria dans un âge sombre. Les aventuriers sont sollicités pour trouver les éléments dispersés d'un artefact légendaire, le seul capable de sceller à nouveau la bête dans son sommeil éternel."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  description: "Les cités flottantes d'Eldoria commencent à tomber du ciel, une après l'autre, victimes d'une malédiction inconnue. Les héros doivent naviguer à travers des labyrinthes aériens dangereux et des temples oubliés pour trouver et restaurer les Pierres d'Élévation qui maintiennent les cités dans les cieux."
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  description: "La Forêt Enchantée se meurt, ses créatures magiques disparaissent et ses arbres perdent leur éclat, victimes d'une corruption mystérieuse. Il incombe aux personnages de traquer la source de cette corruption et de purifier la forêt avant que sa magie ne soit perdue à jamais."
)
puts 'Creating synopses for Eldoria...Done!'

puts 'Creating words for Eldoria...'

# Mots lambda

Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Tragédie')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Révélation')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Intrigue')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Vengeance')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Triomphe')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Défaite')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Sacrifice')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Victoire')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Défi')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Naissance')

# Mots spécifiques

Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Éveil ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Enchantement ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Invocation ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Quête ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Prophétie ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Couronnement ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Malédiction ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Rituel ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Pacte ')
Word.create(universe_id: Universe.find_by(title: 'Eldoria').id, title: 'Métamorphose ')

puts 'Creating words for Eldoria...Done!'

puts 'Creating Characters for Eldoria...'
Character.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  photo: 'https://cdn.midjourney.com/0439d58e-02ae-4f34-8ad6-94d9df99d543/0_2.png',
  name: 'Liora "Stormheart" Il\'harra',
  quotation: 'Je suis le calme avant la tempête et la fureur dans son œil.',
  background: "Liora, connue sous le nom de Stormheart, est une elfe guerrière,
  célèbre pour sa maîtrise de l'épée et ses capacités magiques liées à la tempête.
  Elle est stoïque et réservée, mais sa bravoure et sa détermination sont
  inébranlables lorsqu'il s'agit de défendre Eldoria."
)

Character.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  photo: 'https://cdn.midjourney.com/5d7e4e3f-4955-4fd7-b194-64695cb96c70/0_2.png',
  name: 'Thoren "Forgehand" Ironfoot',
  quotation: 'Mon marteau façonne le métal, tout comme nos actions façonnent le monde.',
  background: "Thoren Ironfoot, surnommé Forgehand, est un nain forgeron, aussi célèbre
  pour son habileté artisanale que pour sa force au combat. Sa nature joviale et son esprit
  astucieux cachent une volonté de fer et une loyauté indéfectible envers ses compagnons."
)

Character.create(
  universe_id: Universe.find_by(title: 'Eldoria').id,
  photo: 'https://cdn.midjourney.com/601f1375-ee51-4126-8485-ca15fbf63fea/0_2.png',
  name: 'Seraphine "Starwhisper" Lumina',
  quotation: "La vérité est comme les étoiles, toujours présente mais souvent cachée dans l'ombre.",
  background: "Seraphine Lumina, connue sous le nom de Starwhisper, est une mage
  humaine spécialisée dans la magie astrale. Elle est curieuse et rêveuse, toujours
  à la recherche de connaissances anciennes et de mystères célestes à résoudre."
)

puts 'Creating Characters for Eldoria...Done!'
