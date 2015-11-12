class WordsController < ApplicationController
  def list
  	@words = Word.all
  	@lesson_words = LessonWord.all
  end
end
