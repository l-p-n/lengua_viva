class MyClassroomController < ApplicationController
  def show
    @user = current_user
    @notes = current_user.reviews.reverse
    @word = Word.new
    Wordbank.create(user: current_user) unless current_user.wordbank
    @wordbank = Wordbank.find_by(user: current_user)
  end
end
