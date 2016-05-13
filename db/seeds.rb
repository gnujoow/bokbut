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

# (1..10).each do |i|
#     new_code = Code.new
#     new_code.user_id=i
#     new_code.language = "C++"
#     new_code.description = "a" + i.to_s
#     new_code.source = "source" + i.to_s
#     new_code.shared = true
#     new_code.save
# end
300.times do |i|
  Code.create(user_id: "#{i}",
              language: "C++",
              description: "#{i}",
              source: "source",
              shared: true
              )
end