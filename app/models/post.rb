class Post < ActiveRecord::Base
    validates :title, :category, presence: true 
    validates :category, format: { with: /\A(Fiction)\z|\A(Non-Fiction)\z/}
    validates :content, length: {minimum: 100}
end

#REGEX THING
#