class Category < ActiveRecord::Base
	has_many :words
	has_many :lesson
end
