class User < ActiveRecord::Base
	has_many :lesson
	has_many :relationship
end
