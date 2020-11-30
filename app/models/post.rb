class Post < ActiveRecord::Base
	include ActiveModel::Validations
	validates_with CategoryValidator

	validates :title, presence: true
	validates :category, presence: true
  	validates :content, length: { minimum: 100 }
end
