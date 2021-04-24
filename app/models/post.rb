class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with TitleValidator
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
   message: "%{value} is not a valid category" }, allow_nil: true
end
