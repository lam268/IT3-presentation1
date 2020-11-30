class UsersController < ApplicationController
  def show
    @blog_users = Blog.all
  end
  def index
    @raking = Blog.group(:user_id).count()
  end
end
