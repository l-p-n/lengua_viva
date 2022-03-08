class WordsController < ApplicationController
  def create
    @word = Word.new(word_params)
    @wordbank = Wordbank.find_by(user: current_user)
    @word.wordbank = @wordbank
    @word.save
  end

  private

  def word_params
    params.require(:word).permit(:spanish_def, :english_def, :extra_info)
  end
end
