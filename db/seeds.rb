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
Message.delete_all
Storycard.delete_all
Event.delete_all
Storyroom.delete_all

User.delete_all
Word.delete_all
Character.delete_all
Universe.delete_all
puts 'DB Cleaned!'

puts ''
puts 'Creating Universes...'
Universe.create(
  title: 'Glaciarift',
  description: 'Un univers de glace et de neige'
)
Universe.create(
  title: 'Foragreen',
  description: 'Un univers de forêt et de verdure'
)
Universe.create(
  title: 'Desaride',
  description: 'Un univers de désert et de sable'
)
Universe.create(
  title: 'Blocean',
  description: 'Un univers d\'eau et d\'ilots'
)
Universe.create(
  title: 'Aeris',
  description: 'Un univers de vent et de nuages'
)
Universe.create(
  title: 'Vulcania',
  description: 'Un univers de feu et de lave'
)
Universe.create(
  title: 'Abyssia',
  description: 'Un univers de ténèbres et de vide'
)
Universe.create(
  title: 'Aetheria',
  description: 'Un univers de lumière et de vide'
)
Universe.create(
  title: 'Aurora',
  description: 'Un univers de lumière et de glace'
)
puts 'Universes created!'


puts ''
puts 'Creating words...'
Word.create(title: 'Espoire')
Word.create(title: 'Trahison')
Word.create(title: 'Amour')
Word.create(title: 'Avalanche')
Word.create(title: 'Rencontre')
Word.create(title: 'Trahison')
Word.create(title: 'Découverte')
Word.create(title: 'Victoire')
Word.create(title: 'Défaite')
Word.create(title: 'Naissance')
Word.create(title: 'Mort')
Word.create(title: 'Mariage')
Word.create(title: 'Divorce')
Word.create(title: 'Révélation')
Word.create(title: 'Conflit')
Word.create(title: 'Résolution')
puts 'words created!'

puts ''
puts 'Creating Characters...'
Character.create(
  name: 'Olaf le viking',
  quotation: 'Harg!',
  background: 'Né dans les montagnes enneigées de la Norvège, Olaf a grandi dans un village de fiers guerriers vikings. Il a appris à chasser et à combattre dès son plus jeune âge. Son père, un chef de clan respecté, lui a enseigné l\'art de la guerre, tandis que sa mère, une voyante, lui a transmis les traditions et les mythes de son peuple.
  Intrépide et audacieux, Olaf rêvait d\'explorer le monde bien au-delà de son village natal. Un jour, alors qu\'il n\'était qu\'un adolescent, il prit la mer avec un groupe de vikings. Depuis, il a navigué sur les mers inconnues, a combattu des bêtes mythiques, et a pillé de riches cités.
  Malgré sa nature sauvage, Olaf est connu pour sa grande loyauté. Il ne recule devant rien pour protéger son clan et ceux qu\'il considère comme sa famille. "Harg!", son cri de guerre, est devenu un symbole de courage et de détermination parmi son peuple.'
)
Character.create(
  name: 'Erug',
  quotation: 'Les profondeurs détiennent des secrets que l\'homme ne peut comprendre.',
  background: 'Né de l\'union d\'une sirène et d\'un marin, Erug incarne la frontière entre les hommes et les créatures marines. Ses écailles luisantes et sa capacité à respirer sous l\'eau témoignent de son héritage marin, tandis que son humanité se manifeste dans son désir de paix entre ces deux mondes. Sa connaissance profonde de la mer et de ses secrets lui permet d\'être un ambassadeur naturel, travaillant sans relâche à la coexistence pacifique entre les êtres humains et les habitants des profondeurs.'
)

puts 'Characters created!'

puts ''
puts 'Creating Universe_character_associations...'
puts 'Creating Universe_character_associations... for Glaciarift'
UniverseCharacterAssociation.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  character_id: Character.find_by(name: 'Olaf le viking').id)
puts 'Creating Universe_character_associations... for Glaciarift done!'

puts 'Creating Universe_character_associations... for Blocean'
UniverseCharacterAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  character_id: Character.find_by(name: 'Erug').id)
puts 'Creating Universe_character_associations... for Blocean done!'

puts 'Universe_character_associations created!'

puts ''
puts 'Creating Universe_word_associations...'
puts 'Creating Universe_word_associations... for Glaciarift'
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  word_id: Word.find_by(title: 'Espoire').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  word_id: Word.find_by(title: 'Trahison').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  word_id: Word.find_by(title: 'Amour').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  word_id: Word.find_by(title: 'Avalanche').id
)
puts 'Creating Universe_word_associations... for Glaciarift done!'

puts 'Creating Universe_word_associations... for Blocean'
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Rencontre').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Trahison').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Découverte').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Victoire').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Défaite').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Naissance').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Blocean').id,
  word_id: Word.find_by(title: 'Mort').id
)
puts 'Creating Universe_word_associations... for Blocean done!'

puts 'Universe_word_associations created!'

puts ''
puts 'Creating Storyroom...'
Storyroom.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  title: 'la voie givrée'
)
Storyroom.create(
  universe_id: Universe.find_by(title: 'Desaride').id,
  title: 'L\'épée ardante'
)
puts 'Storyroom created!'

puts ''
puts 'Creating User...'
User.create(
  email: 'hugo@mail.com',
  password: '123456',
  username: 'Hugotesteur'
)
puts 'User created!'

puts ''
puts 'Creating Message...'
Message.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  user_id: User.find_by(username: 'Hugotesteur').id,
  content: 'Il était une fois...'
)
puts 'Message created!'


puts ''
puts 'Creating Storycard...'
Storycard.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  title: Storyroom.find_by(title: 'la voie givrée').universe.words[0].title
)

Storycard.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  title: Storyroom.find_by(title: 'la voie givrée').universe.words[1].title
)

Storycard.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  title: Storyroom.find_by(title: 'la voie givrée').universe.words[2].title
)

puts 'Storycard created!'

puts ''
puts 'Creating Event...'
Event.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  word_id: Word.find_by(title: Storycard.all[0].title).id,
  dice_value: 20,
  description: 'très favorable !'
)

puts 'Event created!'
