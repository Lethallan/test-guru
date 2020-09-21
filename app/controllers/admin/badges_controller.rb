class Admin::BadgesController < Admin::BaseController
  def index
    @all_badges = Badge.all
  end
end
