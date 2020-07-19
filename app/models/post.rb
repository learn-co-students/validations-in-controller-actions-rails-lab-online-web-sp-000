class Post < ActiveRecord::Base
    validates :content, presence: true, length: { minimum: 100 }
    validates :title, presence: true
        
    validates_inclusion_of :category, :in => %w(fiction non-fiction)
        
end
