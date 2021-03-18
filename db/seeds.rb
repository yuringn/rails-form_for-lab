# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first = ["Chloe", "Anna", "Hanah"]
last = ["Nguyen", "Tran", "Do"]
3.times do
    Student.create(first_name: first.sample, last_name: last.sample)
end

title = ["Exellent", "Good", "Average"]
room = ["100", "200", "300"]
3.times do
    SchoolClass.create(title: title.sample, room_number: room.sample)
end