# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

conferences = []
conferences.push Conference.create! validity: false, name: 'takumi'
conferences.push Conference.create! validity: true,  name: 'rokujo'
conferences.push Conference.create! validity: false, name: 'ito'

SharedRoom.create! user_id: 'AAA', name: 'JoinSample', conference: conferences[1]
SharedRoom.create! user_id: 'BBB', name: 'JoinSample', conference: conferences[1]
SharedRoom.create! user_id: 'AAA', name: 'HOGEHOGEHO', conference: conferences[1]
