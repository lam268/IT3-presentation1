class UsersController < ApplicationController
  def show
    @blog_users = Blog.all
  end
end
