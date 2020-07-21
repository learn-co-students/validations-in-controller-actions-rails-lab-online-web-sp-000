class Post < ActiveRecord::Base
	validates :title, :category, presence: true, uniqueness: true
	validates :content, length: { minimum: 100 }
	validates :category, acceptance: { accept: ['Non-Fiction', 'Fiction'] }
end
