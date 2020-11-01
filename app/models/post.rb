class Post < ActiveRecord::Base
    validates :title, length: {minimum: 1}
    validates :content, length: {minimum: 100}
    include ActiveModel::Validations
    validates_with CategoryValidator



end
