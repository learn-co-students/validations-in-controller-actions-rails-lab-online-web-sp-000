class Author < ActiveRecord::Base
  include ActiveModel::Validations
  validates :name, presence: true
  validates :email, uniqueness: true
end
