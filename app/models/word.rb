class Word < ActiveRecord::Base
	belongs_to :category
	has_many :lesson_words
	accepts_nested_attributes_for :lesson_words

	has_many :word_answers
	accepts_nested_attributes_for :word_answers

end
