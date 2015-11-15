class Category < ActiveRecord::Base
	has_many :words, inverse_of: :category
	accepts_nested_attributes_for :words, allow_destroy: true
end
