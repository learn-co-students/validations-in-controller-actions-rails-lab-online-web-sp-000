class Post < ActiveRecord::Base
    validates :title, presence: true, on: :create
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
