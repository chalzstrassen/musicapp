# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "a@b.com", password: "password")
User.create!(email: "b@c.com", password: "password1")
User.create!(email: "c@gmail.com", password: "pass123")

Band.create!(name: "Jump")
Band.create!(name: "Scream")
Band.create!(name: "Attack")
Band.create!(name: "Kill")

Album.create!(title: "I don't know", band_id: 1, recording: "Studio")
Album.create!(title: "I don't know 2", band_id: 1, recording: "Studio")
Album.create!(title: "Trapped", band_id: 2, recording: "Live")
Album.create!(title: "Scared for Life", band_id: 2, recording: "Studio")

Track.create!(album_id: 1, lyrics: "Aiii don't know", song: "I don't know", single: "Regular")
Track.create!(album_id: 2, lyrics: "You don't know", song: "You don't know", single: "Regular")
Track.create!(album_id: 1, lyrics: "Jump so you can know", song: "Knowledge", single: "Regular")
Track.create!(album_id: 4, lyrics: "Aaahhhhhhh!", song: "Screaming", single: "Regular")
