class WordsController < ApplicationController
  def index
  	if params[:category_id] and params[:category_id] != ''
  		if params[:type] == 'all'
	  		@words = Word.where(category_id: params[:category_id])
	  	elsif params[:type] == 'learned'
			learned_ids = "SELECT word_id FROM lesson_words"
			@words = Word.where("category_id = ? and id IN (#{learned_ids})", params[:category_id])
		else
			learned_ids = "SELECT word_id FROM lesson_words"
			@words = Word.where("category_id = ? and id NOT IN (#{learned_ids})", params[:category_id])	
		end
  	else
  		@words = Word.all
  	end
  	
  	@categories = Category.all
  end
end
