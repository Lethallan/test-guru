class UsersController < ApplicationController
  def show
    @usertests = current_user.test_passages
  end
end
