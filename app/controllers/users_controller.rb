class UsersController < ApplicationController
  def my_account
    @user = User.find(params[:id])
    @bookmarked = @user.bookmarks.map { |bookmark| bookmark.resource }
    @viewed = @user.views.map { |view| view.resource }
  end
end
