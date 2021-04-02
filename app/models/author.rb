class Author < ActiveRecord::Base
  validates :name, presence:true 
  validates :name,:email, uniqueness: true 
end
