# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    { first_name: 'Bilbo', last_name: 'Baggins', email: 'bilbo@bla.com', password: '123456' },
    { first_name: 'Morgoth', last_name: 'Bauglir', email: 'melkor_the_best@bla.com', password: '123456', type: 'Admin' },
    { first_name: 'Gandalf', last_name: 'the Grey', email: 'sauron_sucks@bla.com', password: '123456', type: 'Admin' },
    { first_name: 'Galadriel', last_name: 'Lady of Light', email: 'gimli_fck_off@bla.com', password: '123456' },
    { first_name: 'Tranduil', last_name: 'of Mirkwood', email: 'elvish_badass@bla.com', password: '123456' },
    { first_name: 'Aragorn', last_name: 'Elesssar', email: 'like_a_boss@bla.com', password: '123456' },
    { first_name: 'Arven', last_name: 'Undomiel', email: 'fck_immortality@bla.com', password: '123456' }
  ]
)

Category.create!(
  [
    { topic: 'Ruby' },
    { topic: 'Rails' },
    { topic: 'HTML' },
    { topic: 'CSS' },
    { topic: 'JavaScript' }
  ]
)

Test.create!(
  [
    { title: 'Ruby - beginner', level: 1, category_id: 1, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'Ruby - advanced', level: 2, category_id: 1, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'Rails - beginner', level: 2, category_id: 2, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'Rails - advanced', level: 3, category_id: 2, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'HTML - beginner', level: 1, category_id: 3, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'CSS - beginner', level: 1, category_id: 4, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'JavaScript - beginner', level: 2, category_id: 5, user_id: User.find_by(email: 'sauron_sucks@bla.com').id }
  ]
)

Question.create!(
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

Answer.create!(
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

# TestPassage.create(
#   [
#     { user_id: 1 , test_id: 1 },
#     { user_id: 1 , test_id: 5 },
#     { user_id: 2 , test_id: 2 },
#     { user_id: 2 , test_id: 3 },
#     { user_id: 3 , test_id: 4 },
#     { user_id: 4 , test_id: 7 },
#     { user_id: 5 , test_id: 6 },
#     { user_id: 5 , test_id: 1 }
#   ]
# )