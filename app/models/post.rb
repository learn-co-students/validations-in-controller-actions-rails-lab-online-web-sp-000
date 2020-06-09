class Post < ActiveRecord::Base
    # include ActiveModel::Validations
    # validates_with TitleValidator, CategoryValidator, ContentValidator
    validates :title, presence: true 
    validates :category, format: { with: /\ANon-Fiction\z|\AFiction\z/ }
    validates :content, length: { minimum: 100 }
end
