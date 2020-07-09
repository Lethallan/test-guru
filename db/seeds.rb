# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rails db:create
# Создать миграции по образцу AddTestRefToCategories (всё в один файл)
# rails db:migrate
# потом прописать все сиды в порядке: категории, тесты, вопросы, ответы, юзеры, статусы # rails g model status status:string, ЮЗЕРТЕСТЫ (массивами хэшей по 5 штук)
# Юзертесты - сгенерировать для них модель
# rails db:seed

User.create(
  [
    { name: 'Bilbo Baggins', email: 'bilbo@bla.com' },
    { name: 'Morgoth Bauglir', email: 'melkor_the_best@bla.com' },
    { name: 'Gandalf the Grey', email: 'sauron_sucks@bla.com' },
    { name: 'Galadriel', email: 'gimli_fck_off@bla.com' },
    { name: 'Tranduil', email: 'elvish_badass@bla.com' },
    { name: 'Aragorn', email: 'like_a_boss@bla.com' },
    { name: 'Arven', email: 'fck_immortality@bla.com' }
  ]
)

Category.create(
  [
    { topic: 'Ruby' },
    { topic: 'Rails' },
    { topic: 'HTML' },
    { topic: 'CSS' },
    { topic: 'JavaScript' }
  ]
)

Test.create(
  [
    { title: 'Ruby - beginner', level: 1, category_id: 1, user_id: User.find_by(name: 'Arven').id },
    { title: 'Ruby - advanced', level: 2, category_id: 1, user_id: User.find_by(name: 'Arven').id },
    { title: 'Rails - beginner', level: 2, category_id: 2, user_id: User.find_by(name: 'Arven').id },
    { title: 'Rails - advanced', level: 3, category_id: 2, user_id: User.find_by(name: 'Arven').id },
    { title: 'HTML - beginner', level: 1, category_id: 3, user_id: User.find_by(name: 'Arven').id },
    { title: 'CSS - beginner', level: 1, category_id: 4, user_id: User.find_by(name: 'Arven').id },
    { title: 'JavaScript - beginner', level: 2, category_id: 5, user_id: User.find_by(name: 'Arven').id }
    # { title: 'JavaScript - beginner', level: 2, category_id: 5, user_id: User.find_by(name: 'Arven').id }
  ]
)

Question.create(
  [
    { body: 'Blue catfish threadfin lungfish skate sargassum fish', test_id: 1 },
    { body: 'Rock bass lightfish merluccid hake galjoen fish sea toad duckbill eel', test_id: 2 },
    { body: 'Viperfish--dealfish mummichog California flyingfish walleye Old World', test_id: 3 },
    { body: 'Electric stargazer titan triggerfish deepwater flathead man-of-war fish', test_id: 4 },
    { body: 'Warbonnet Cherubfish algae eater tiger barb swallower shovelnose sturgeon madtom wasp fish', test_id: 5 },
    { body: 'Does your lorem ipsum text long for something a little fishier?', test_id: 6 },
    { body: 'Shovelnose sturgeon nurseryfish Rasbora', test_id: 7 }
  ]
)

Answer.create(
  [
    { body: 'Silverside; southern sandfish pufferfish', question_id: 1 },
    { body: 'Unicorn fish armored gurnard weatherfish', question_id: 2 },
    { body: 'Banjo catfish southern flounder lizardfish zebra trout alewife soapfish blackchin pencil catfish', question_id: 3 },
    { body: 'Pike characid silverside golden loach', question_id: 4 },
    { body: 'Zebra turkeyfish', question_id: 5 },
    { body: 'Shovelnose sturgeon kaluga', question_id: 6 },
    { body: 'It’s too fishy!', question_id: 7 }
  ]
)

TestsUser.create(
  [
    { user_id: 1 , test_id: 1 },
    { user_id: 1 , test_id: 5 },
    { user_id: 2 , test_id: 2 },
    { user_id: 2 , test_id: 3 },
    { user_id: 3 , test_id: 4 },
    { user_id: 4 , test_id: 7 },
    { user_id: 5 , test_id: 6 },
    { user_id: 5 , test_id: 1 }
  ]
)