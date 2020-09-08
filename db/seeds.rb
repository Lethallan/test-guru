User.create!(
  [
    { first_name: 'Bilbo', last_name: 'Baggins', email: 'bilbo@bla.com', password: 'thegreatestadventure' },
    { first_name: 'Morgoth', last_name: 'Bauglir', email: 'melkor_the_best@bla.com', password: 'silmarilsaremine', type: 'Admin' },
    { first_name: 'Gandalf', last_name: 'the Grey', email: 'sauron_sucks@bla.com', password: 'youshallnotpass', type: 'Admin' },
    { first_name: 'Smeagol', last_name: 'Gollum', email: 'gollum_gollum@bla.com', password: 'myprescious' },
  ]
)

Category.create!(
  [
    { topic: 'Mordor' },
    { topic: 'Elves' },
    { topic: 'Silmarillion' }
  ]
)

Test.create!(
  [
    { title: 'About Mordor', level: 1, category_id: 1, user_id: User.find_by(email: 'melkor_the_best@bla.com').id },
    { title: 'Legolas', level: 2, category_id: 2, user_id: User.find_by(email: 'sauron_sucks@bla.com').id },
    { title: 'Silmarils', level: 3, category_id: 3, user_id: User.find_by(email: 'melkor_the_best@bla.com').id },
  ]
)

Question.create!(
  [
    { body: 'What does the word "Mordor" mean?', test_id: 1 },
    { body: 'What is the most famous mountain in Mordor?', test_id: 1 },
    { body: 'The name of the Dark Tower of Sauron is:', test_id: 1 },
    { body: 'What did Sauron make in the fire of Orodruin?', test_id: 1 },
    { body: 'Where is the motherland of Legolas?', test_id: 2 },
    { body: 'Who is the father of Legolas?', test_id: 2 },
    { body: 'Who is his wife?', test_id: 2 },
    { body: 'What does his name mean?', test_id: 2 },
    { body: 'Who created silmarils?', test_id: 3 },
    { body: 'How many silmarils were there?', test_id: 3 },
    { body: 'Which of these events never happened?', test_id: 3 },
    { body: 'Who never had a silmaril?', test_id: 3 }
  ]
)

Answer.create!(
  [
    { body: 'Strong Fortress', question_id: 1 },
    { body: 'Black Land', question_id: 1, correct: true },
    { body: 'Horde of Orcs', question_id: 1 },
    { body: 'Black Hole', question_id: 1 },
    { body: 'High Hrothgar', question_id: 2 },
    { body: 'Gondor', question_id: 2 },
    { body: 'Orodruin', question_id: 2, correct: true },
    { body: 'Nahui', question_id: 2 },
    { body: 'Barad-dur', question_id: 3, correct: true },
    { body: 'Silmarillion', question_id: 3 },
    { body: 'Gorgoroth', question_id: 3 },
    { body: 'Angband', question_id: 3 },
    { body: 'Magic wand', question_id: 4 },
    { body: 'A great party for orcs', question_id: 4 },
    { body: 'Alcohol machine', question_id: 4 },
    { body: 'The One Ring', question_id: 4, correct: true },
    { body: 'Mirkwood', question_id: 5, correct: true },
    { body: 'Lothlorien', question_id: 5 },
    { body: 'Rivendell', question_id: 5 },
    { body: 'Gondor', question_id: 5 },
    { body: 'Aragorn', question_id: 6 },
    { body: 'Gandalf', question_id: 6 },
    { body: 'Feanor', question_id: 6 },
    { body: 'Tranduil', question_id: 6, correct: true },
    { body: 'Arwen', question_id: 7 },
    { body: 'Nobody', question_id: 7, correct: true },
    { body: 'Tauriel', question_id: 7 },
    { body: 'Gimli', question_id: 7 },
    { body: 'Green leaves', question_id: 8, correct: true },
    { body: 'Sunlight', question_id: 8 },
    { body: 'Free wind', question_id: 8 },
    { body: 'Elven prince', question_id: 8 },
    { body: 'Eru Iluvatar', question_id: 9 },
    { body: 'Varda Elentari', question_id: 9 },
    { body: 'Kurufinwe Feanaro', question_id: 9, correct: true },
    { body: 'Morgoth Bauglir', question_id: 9 },
    { body: '2', question_id: 10 },
    { body: '7', question_id: 10 },
    { body: '3', question_id: 10, correct: true },
    { body: '9', question_id: 10 },
    { body: 'Melkor stole the silmarills', question_id: 11 },
    { body: 'Noldor fought a horde of dwarves to get one of the silmarils back', question_id: 11 , correct: true},
    { body: 'Feanor refused to give silmarills to valar', question_id: 11 },
    { body: 'An elven princess tried to steal a silmarill from Melkor...', question_id: 11 },
    { body: 'Melkor', question_id: 12 },
    { body: 'Luthien Tinuviel', question_id: 12 },
    { body: 'Earendil the Mariner', question_id: 12 },
    { body: 'Sauron', question_id: 12, correct: true }
  ]
)
