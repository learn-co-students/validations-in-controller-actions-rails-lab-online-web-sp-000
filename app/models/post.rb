class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with CategoryValidator

    validates :title, presence: true
    validates :category, presence: true
    validates :category, length: { maximum: 11 }
    validates :content, length: { minimum: 100 }
end
