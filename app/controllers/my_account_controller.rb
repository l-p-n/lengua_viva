class MyAccountController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookmarked = @user.bookmarks.map { |bookmark| bookmark.resource }
    @viewed = @user.views.map { |view| view.resource }
    @viewed = @viewed.reverse
  end
end
