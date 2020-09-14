class BadgesController < ApplicationController
  def index
    @current_badges = current_user.userbadges
  end
end
