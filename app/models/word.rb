class Word < ActiveRecord::Base
	belongs_to :category
	validates :category_id, presence: true

	has_many :lesson_words, dependent: :destroy
	accepts_nested_attributes_for :lesson_words

	has_many :word_answers, dependent: :destroy
	accepts_nested_attributes_for :word_answers

end
