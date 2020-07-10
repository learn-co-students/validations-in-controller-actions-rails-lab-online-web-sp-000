class Post < ActiveRecord::Base
    # include ActiveModel::Validations
    validates :title, presence: true, uniqueness: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    # validates_with CategoryValidator 
end
