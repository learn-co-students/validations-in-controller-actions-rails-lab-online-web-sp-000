class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { is: 100}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
