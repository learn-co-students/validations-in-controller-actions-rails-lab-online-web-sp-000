require 'pry'
class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.category == "Fiction" || record.category == "Non-Fiction"
      record.errors[:category] << "Category needs to be Fiction or Non-Fiction"
    end
  end
end

class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with PostValidator
  validates :content, length: {minimum: 100}
  validates :title, presence: true
end
