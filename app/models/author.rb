class Author < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with NameValidator
    validates :email, uniqueness: true
  end