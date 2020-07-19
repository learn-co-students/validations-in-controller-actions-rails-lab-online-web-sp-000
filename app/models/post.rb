class Post < ActiveRecord::Base
    validates :content, presence: true, length: { minimum: 100 }
    validates :title, presence: true
    validates :category, presence: true
    # validates_inclusion_of :category, :in => %w(fiction non-fiction)
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
        
end
