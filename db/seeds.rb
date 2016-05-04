# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seeding for languages
@data_hash = Hash.new
path = Rails.root.to_s
file = File.read(path+'/db/seed/lang.json')
@data_hash = JSON.parse(file)

@data_hash.each do |a|
  Language.create(name: a["name"],value: a["value"])
end
