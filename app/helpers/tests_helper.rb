module TestsHelper
  TEST_LEVELS = {
    0 => 'as easy as abc',
    1 => 'easy',
    2 => 'quite easy',
    3 => 'not very hard',
    4 => 'turn on your brain',
    5 => 'quite a puzzle',
    6 => 'harder than you think',
    7 => 'hard',
    8 => 'very hard',
    9 => 'VERY HARD',
    10 => 'Are you crazy?!'
  }.freeze

  def test_level(test)
    TEST_LEVELS[test.level] || :hero
  end
end
