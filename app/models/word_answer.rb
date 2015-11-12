class WordAnswer < ActiveRecord::Base
	has_many :lesson_word
	belongs_to :word
end
