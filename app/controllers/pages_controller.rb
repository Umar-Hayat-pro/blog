class PagesController < ApplicationController
  def index
    @posts = Post.all.limit(10)
  end

  def about
  end

  def contact
  end
end
