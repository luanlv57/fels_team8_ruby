class Word < ActiveRecord::Base
	belongs_to :category, inverse_of: :words
	

	has_many :lesson_words, dependent: :destroy
	accepts_nested_attributes_for :lesson_words

	has_many :word_answers, inverse_of: :word
	accepts_nested_attributes_for :word_answers

end
