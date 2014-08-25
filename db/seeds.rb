# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Potluck.destroy_all
Keyword.destroy_all
Item.destroy_all

themed = Keyword.create!(name: 'Themed')
international = Keyword.create!(name: 'International')
singles = Keyword.create!(name: 'Singles')
family = Keyword.create!(name: 'Family')

Potluck.create!([{
  name: "Around the World",     
	location: "Annie's House",     
	datetime: "2014-09-22 18:00:00",
	keywords: [themed, international]
},
{
	name: "Bring an Ex",
	location: "South Park",     
	datetime: "2014-10-12 19:00:00",
	keywords: [singles]
},
{
	name: "Hot Dog Party",
	location: "John's Place",     
	datetime: "2014-11-12 14:00:00",
	keywords: [family]
}
]);


