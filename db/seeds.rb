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

puts ''
puts 'Creating Universes...'
Universe.create(
  title: 'Glaciarift',
  description: 'Les signes étaient partouts, mais nous les avons ignorés. Il y a ..., une série de catastrophes
  naturelles frappa le monde, la population mondiale fu décimée. Nous avons rassemblé ... personnes et avons créé
  ensemble une communauté dans ...',
  photo: 'https://cdn.midjourney.com/7762621f-8a83-4c8c-9144-e6682391afd5/0_3.png'
)
Universe.create(
  title: 'Night City',
  description: 'Cette ville est corrompue et dominée par les corporations, le crime et la violence des gangs.
  En 2020, Night City est une métropole en pleine croissance mais toujours en proie à la violence et à la criminalité,
  et devient le champ de bataille de la Quatrième Guerre Corporatiste en 2022.',
  photo: 'https://www.cyberpunk.net/build/images/bg-e58858b3.jpg'
  # photo: 'https://cdn.midjourney.com/29532fea-ce89-42e4-942c-1aacdb880102/0_0.png'
)
Universe.create(
  title: 'Desaride',
  description: 'Un univers de désert et de sable. Les populations luttent pour leur survie et les ressources.
  Le pétrol est la clé du transport et de la survie.',
  photo: 'https://cdn.midjourney.com/d4d1c489-9260-4aee-943d-e9bccca4f226/0_3.png'
)
Universe.create(
  title: 'Blocean',
  description: 'Un univers d\'eau et d\'ilots',
  photo: 'https://cdn.midjourney.com/1118471a-abec-4d86-86aa-0cd3308a93f6/0_1.png'
)
puts 'Universes created!'

puts ''
puts 'Creating synopses...'
puts 'Creating synopses for Night City...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  description: 'Arasak a fait ... Je suis désormais en danger. Il me faut trouver ... pour ...'
)
Synopsis.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  description: 'Il y a beaucoup d\'argent dans ... Je vais monter une équipe pour ....'
)
puts 'Creating synopses for Night City... done!'

puts 'Creating synopses for Desaride...'
Synopsis.create(
  universe_id: Universe.find_by(title: 'Desaride').id,
  description: 'Nous allons rechercher ... dans ....'
)
puts 'Creating synopses for Desaride... done!'
puts 'Creating synopses... Done!'


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
  photo: '',
  name: 'Olaf le viking',
  quotation: 'Je m\'appel... J\'ai...ans. Je suis doué pour...',
  background: '...',
  age: 30
)
Character.create(
  name: 'Erug',
  quotation: 'Les profondeurs détiennent des secrets que l\'homme ne peut comprendre.',
  background: 'Né de l\'union d\'une sirène et d\'un marin, Erug incarne la frontière entre les hommes et les créatures marines. Ses écailles luisantes et sa capacité à respirer sous l\'eau témoignent de son héritage marin, tandis que son humanité se manifeste dans son désir de paix entre ces deux mondes. Sa connaissance profonde de la mer et de ses secrets lui permet d\'être un ambassadeur naturel, travaillant sans relâche à la coexistence pacifique entre les êtres humains et les habitants des profondeurs.'
)

puts 'Creating Characters... for Night City'
Character.create(
  name: 'Adam Smasher',
  quotation: 'Harg!',
  background: 'Adam Smasher est un cyberpunk assez typique, un bon à rien
  new yorkais qui a grandi dans la rue et s\'est spécialisé dans la violence
  appliquée. Cela dit, il a toujours su s\'adapter ; c\'est pourquoi il est
  rentré dans l\'Armée de Terre dès que son gang s\'est fait décimer.
  Ayant porté l\'uniforme pendant plusieurs années, il s\'est libéré de ses
  obligations militaires (il a été renvoyé pour mauvaise conduite) et est
  devenu tueur à gages à New York. ',
  photo: 'https://static1.srcdn.com/wordpress/wp-content/uploads/2022/10/Cyberpunk-2077-Adam-Smasher.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5'
)
Character.create(
  name: 'Johnny Silverhand',
  quotation: 'Samouraï, réveille-toi, bordel, nous avons une ville à brûler !',
  background: 'ohnny Silverhand, né sous le nom de Robert John Linder, est un
  homme que tout le monde connaît en Amérique. Un ancien militaire américain
  qui a fait du mouvement rockerboy ce qu\'il est aujourd\'hui.',
  photo:'https://static1.thegamerimages.com/wordpress/wp-content/uploads/2021/01/cyberpunk-2077-johnny-silverhand-glasses.jpg'
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

puts''
puts 'Creating Universe_character_associations... for Night City'
UniverseCharacterAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  character_id: Character.find_by(name: 'Adam Smasher').id)
UniverseCharacterAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  character_id: Character.find_by(name: 'Johnny Silverhand').id)
  puts 'Creating Universe_character_associations... for Night City'

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

puts 'Creating Universe_word_associations... for Night City'
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  word_id: Word.find_by(title: 'Mariage').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  word_id: Word.find_by(title: 'Divorce').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  word_id: Word.find_by(title: 'Révélation').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  word_id: Word.find_by(title: 'Conflit').id
)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title: 'Night City').id,
  word_id: Word.find_by(title: 'Résolution').id
)
puts 'Creating Universe_word_associations... for Night City done !'

puts 'Universe_word_associations created!'

puts ''

puts 'Creating User...'

User.create(
  email: 'hugo@mail.com',
  password: '123456',
  username: 'Hugotesteur'
)

User.create(
  email: 'bravo@mail.com',
  password: '123456',
  username: 'bravotesteur'
)

User.create(
  email: 'charlie@mail.com',
  password: '123456',
  username: 'charlietesteur'
)

puts 'User created!'

puts ''

puts 'Creating Storyroom...'
Storyroom.create(
  universe_id: Universe.find_by(title: 'Glaciarift').id,
  title: 'la voie givrée',
  user_id: User.find_by(username: 'Hugotesteur').id
)

Storyroom.create(
  universe_id: Universe.find_by(title: 'Desaride').id,
  title: 'L\'épée ardante',
  user_id: User.find_by(username: 'charlietesteur').id

)
puts 'Storyroom created!'

puts ''

puts 'Creating Storyroom_characters...'
puts 'Creating Storyroom_characters... for Desaride'
StoryroomCharacter.create(
  storyroom_id: Storyroom.find_by(title: 'L\'épée ardante').id,
  photo: Character.find_by(name: 'Olaf le viking').photo,
  name: 'Max',
  quotation: 'Rage de vaincre',
  background: 'J\'ai été prisonnier dans le désert. Je suis doué avec les véhicules.',
  age: 30
)
puts 'Creating Storyroom_characters... for Desaride Done!'


puts ''
puts 'Creating Storyroom_user_associations...'
StoryroomUserAssociation.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  user_id: User.find_by(username: 'Hugotesteur').id
)
StoryroomUserAssociation.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  user_id: User.find_by(username: 'bravotesteur').id
)
StoryroomUserAssociation.create(
  storyroom_id: Storyroom.find_by(title: 'la voie givrée').id,
  user_id: User.find_by(username: 'charlietesteur').id
)
puts 'Creating Storyroom_user_associations... done!'

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
