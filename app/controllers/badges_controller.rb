class BadgesController < ApplicationController
  def index
    @all_badges = Badge.all
  end
end
