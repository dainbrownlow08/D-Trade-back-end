# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wallet.delete_all
User.delete_all

user1 = User.create(username: "Dustin")


wallet1 = Wallet.create(user_id: user1.id, cash: 10000.00,balance: 0, btc: 1, eth: 0, doge: 0)
