class Post < ActiveRecord::Base
    validates :category, :exclusion => { :in => %w(Fiction Non-Fiction) }
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
end
