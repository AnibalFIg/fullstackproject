# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'heroes_information.csv'))
# puts csv_text


# csv_text = File.read(Rails.root.join('lib', 'seeds', 'heroes_information.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv
#
#
csv_text = File.read(Rails.root.join('lib', 'seeds', 'heroes_information.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
end
user= User.first
csv_text = File.read(Rails.root.join('lib', 'seeds', 'heroes_information.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = user.heros.build
  t.name = row['name']
  t.gender = row['Gender']
  t.eye_color = row['Eye color']
  t.race = row['Race']
  t.hair_color = row['Hair color']
  t.height = row['Height']
  t.publisher = row['Publisher']
  t.skin_color = row['Skin color']
  t.alignment = row['Alignment']
  t.weight = row['Weight']
  t.save
  puts "#{t.name}, #{t.publisher} saved"
  puts "#{t.persisted?}"
   # require "pry"
   # binding.pry
end

puts "There are now #{Hero.count} rows in the heroes table"
