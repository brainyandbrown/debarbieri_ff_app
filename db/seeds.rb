# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Name.destroy_all
Bye.destroy_all
Position.destroy_all
# Ranking.destroy_all
# Team.destroy_all
# Weather.destroy_all

positions = Position.create([
	{position: 'quarterback'},
	{position: 'runningback'},
	{position: 'wide_receiver'},
	{position: 'tight_end'},
	{position: 'kicker'},
	{position: 'defense'}
])

names = Name.create([
	{name: ''}
])

byes = Bye.create([
	{bye_week: ''}
])


# rankings