class Post < ActiveRecord::Base
  validates :title, presence: true #makes sure title cannot be blank
  validates :content, length: { minimum: 100 } #makes sure content length is greater than 100 characters
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) } #makes sure that post category is either fiction or non-fiction
end
