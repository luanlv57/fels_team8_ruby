class WordAnswer < ActiveRecord::Base
	has_many :lesson_words
	accepts_nested_attributes_for :lesson_words
	belongs_to :word
end
