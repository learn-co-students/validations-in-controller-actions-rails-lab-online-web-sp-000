class Post < ActiveRecord::Base
  validates :title, :category, :content, presence:true 
  validates :title, :category, uniqueness: true 
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
