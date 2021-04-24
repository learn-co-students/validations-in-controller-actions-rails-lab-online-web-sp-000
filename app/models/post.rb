class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with TitleValidator
  validates_with ContentValidator
end
