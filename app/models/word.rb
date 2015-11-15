class Word < ActiveRecord::Base
	belongs_to :category, inverse_of: :words
	validates :category_id, presence: true

	has_many :lesson_words, dependent: :destroy
	accepts_nested_attributes_for :lesson_words

	has_many :word_answers, inverse_of: :word
	accepts_nested_attributes_for :word_answers

	
	validates_presence_of :category
	
	accepts_nested_attributes_for :word_answers, allow_destroy: true
end
