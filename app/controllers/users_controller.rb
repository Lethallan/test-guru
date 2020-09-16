class UsersController < ApplicationController
  def show
    @usertests = current_user.test_passages
    @userbadges = current_user.badges
  end
end
