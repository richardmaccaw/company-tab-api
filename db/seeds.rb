# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Company.delete_all
Announcement.delete_all
six = Company.create(domain: 'six.com', name: 'Six Financial Information')
whoishiring = Company.create(domain: 'whoishiring.co', name: 'Whoishiring')

u1 = User.create(name: "Erika", uid: 'asdfklj23429', company: six)
u2 = User.create(name: "Richard", uid: 'ZyiJDXQK73hi4mo9b8kxeoNfQdy2', company: whoishiring)

a1 = Announcement.create(title: 'New feature out', description:'There is a new feature out!', date: '15th October 2018', published: true, company: whoishiring)
a2 = Announcement.create(title: 'Erika hired as CEO', description:'Jokes', date: '15th October 2018', published: true, company: six)
