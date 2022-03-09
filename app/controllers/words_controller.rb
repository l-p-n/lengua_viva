class WordsController < ApplicationController
  def create
    @word = Word.new(word_params)
    @wordbank = Wordbank.find_by(user: current_user)
    @word.wordbank = @wordbank
    if @word.save
      redirect_to my_classroom_path(current_user, anchor: "my-vocabulary-header")
    else
      render my_classroom_path
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to my_classroom_path, anchor: "vocab-table"
  end

  private

  def word_params
    params.require(:word).permit(:spanish_def, :english_def, :extra_info)
  end
end
