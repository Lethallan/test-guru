class BadgesService

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
  end

  def call
    first_try
    maniac
    all_right
  end


  private

  def first_try
    create_userbadge(5) if ((@user.test_passages.size == 1) && @user.test_passages.first.completed?) && unique?(5)
  end

  def maniac
    create_userbadge(7) if (Test.all.size == @user.test_passages.size) && unique?(7)
  end

  def all_right
    create_userbadge(6) if (@user.test_passages.last.correct_questions == @user.test_passages.last.test.questions.size) && unique?(6)
  end

  def create_userbadge(badge_id)
    Userbadge.create(user_id: @user.id, badge_id: badge_id)
  end

  def unique?(badge_id)
    Userbadge.where(user_id: @user.id, badge_id: badge_id).present? == false
  end
end
