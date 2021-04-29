class Post < ActiveRecord::Base

    validates :title, presence: true
    include ActiveModel::Validations
    validates_with CategoryValidator
    validates :content, length: { minimum: 100 }
end
