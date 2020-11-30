class Post < ActiveRecord::Base
	#I made this custom validator, but I don't have to, see the last validator on line 8.
	# include ActiveModel::Validations
	# validates_with CategoryValidator

	validates :title, presence: true
  	validates :content, length: { minimum: 100 }
  	validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
