class PagesController < ApplicationController
  def index
    @articles = current_user.articles
  end
end
