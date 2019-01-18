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
whoishiring = Company.create(domain: 'whoishiring.co', name: 'Whoishiring')
gmail = Company.create(domain: 'gmail.com', name: 'gmail')

u1 = User.create(name: "richard clearbit", uid: 'zKpQaxVZL3bdccm05tYABsJvnwW2', company: gmail)
u2 = User.create(name: "Ricci6 gmail", uid: 'ZyiJDXQK73hi4mo9b8kxeoNfQdy2', company: gmail)
u4 = User.create(name: "richard whoishiring", uid: 'MdUSQ6YBOsY8tg8XeX36Spza1zy1', company: whoishiring)

a1 = Announcement.create(title: 'New feature out', description:'There is a new feature out!', date: '15th October 2018', published: true, company: gmail)
a2 = Announcement.create(title: 'Erika hired as CEO', description:'Jokes', date: '15th October 2018', published: true, company: gmail)
a3 = Announcement.create(title: 'Alex joins the company', description:'as intern', date: '15th October 2018', published: true, company: whoishiring)

t1 = Timezone.create(zone: 'Etc/Greenwich', name: 'London office', company: gmail)
t2 = Timezone.create(zone: 'Europe/Amsterdam', name: 'Berlin office', company: gmail)