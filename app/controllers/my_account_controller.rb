class MyAccountController < ApplicationController
  def show
    @user = current_user
    @bookmarked = @user.bookmarks.map { |bookmark| bookmark.resource }
    @viewed = @user.views.map { |view| view.resource }
    @viewed = @viewed.reverse.uniq
  end
end
