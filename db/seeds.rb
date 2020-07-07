# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Bilbo Baggins', email: 'bilbo_b@blabla.com')
User.create(name: 'Frodo baggins', email: 'frodo_b@blabla.com')

Test.create(title: 'Lorem Ipsum', level: 0)

Question.create(body: 'Главный вопрос жизни, вселенной и всего такого')

Answer.create(body: '42')

Category.create(topic: 'Бренность бытия')
