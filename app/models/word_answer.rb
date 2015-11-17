class WordAnswer < ActiveRecord::Base
	has_many :lesson_words, dependent: :destroy
	accepts_nested_attributes_for :lesson_words
	belongs_to :word
	validates :word_id, presence: true
end
