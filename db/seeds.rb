# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{title: 'Jewerly'}, {title: 'Music CD'},{title: 'Performance'},{title: 'Ceramic Work'}])
Member.create(first_name: 'Admas', last_name: 'Molla', password_digest: 'Secret')