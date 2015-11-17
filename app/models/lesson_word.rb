class LessonWord < ActiveRecord::Base
	belongs_to :word
	validates :word_id, presence: true
	belongs_to :word_answer
	validates :word_answer_id, presence: true
end
