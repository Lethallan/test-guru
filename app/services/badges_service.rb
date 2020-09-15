class BadgesService

  def call
    if first_try || maniac || all_right
      current_user.badges << badge
    end
  end

  private

  def first_try
    (current_user.test_passages.size == 1) && current_user.test_passages.first.completed?
  end

  def maniac
    Test.all.size == current_user.test_passages.size
  end

  def all_right
    current_user.test_passages.last.correct_questions == current_user.test_passages.last.test.questions.size
  end
end
