class Author < ActiveRecord::Base
  validates :name, presence: true 
  validates_uniqueness_of :email, presence: true
end
