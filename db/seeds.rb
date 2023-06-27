# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# test data

puts "Creating test data..."
UniverseCharacterAssociation.delete_all
UniverseWordAssociation.delete_all
Word.delete_all
Character.delete_all
Universe.delete_all
puts "DB Cleaned!"

puts""
puts "Creating Universes..."
Universe.create(title:"Contrées givrées")
puts "Universes created!"


puts""
puts "Creating words..."
Word.create(title:"Espoire")
Word.create(title:"Trahison")
Word.create(title:"Amour")
Word.create(title:"Avalanche")
puts "words created!"


puts""
puts "Creating Characters..."
Character.create(name:"Olaf le viking")
puts "Characters created!"

puts""
puts "Creating Universe_character_associations..."
UniverseCharacterAssociation.create(
  universe_id: Universe.find_by(title:"Contrées givrées").id,
  character_id: Character.find_by(name:"Olaf le viking").id)
puts "Universe_character_associations created!"

puts""
puts "Creating Universe_word_associations..."
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title:"Contrées givrées").id,
  word_id: Word.find_by(title:"Espoire").id)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title:"Contrées givrées").id,
  word_id: Word.find_by(title:"Trahison").id)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title:"Contrées givrées").id,
  word_id: Word.find_by(title:"Amour").id)
UniverseWordAssociation.create(
  universe_id: Universe.find_by(title:"Contrées givrées").id,
  word_id: Word.find_by(title:"Avalanche").id)
puts "Universe_word_associations created!"
