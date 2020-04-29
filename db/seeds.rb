Game.destroy_all if Rails.env.development?
Player.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts '--- CREATING GAMES ---'

Game.create!([{ date: Date.parse('28-04-2020') },
              { date: Date.parse('21-04-2020') },
              { date: Date.parse('15-04-2020') },
              { date: Date.parse('07-04-2020') },
              { date: Date.parse('31-03-2020') }])

puts '--- CREATING PLAYERS ---'

Player.create!([{ name: 'Bez' },
                { name: 'Graham' },
                { name: 'Lewis' },
                { name: 'Alawi' },
                { name: 'Mason' },
                { name: 'Cridland' },
                { name: 'Stockers' },
                { name: 'Cal' },
                { name: 'Malawi' },
                { name: 'Todd' }])

puts '--- CREATING USER ---'

User.create!(email: 'test@gmail.com', password: 'password')
