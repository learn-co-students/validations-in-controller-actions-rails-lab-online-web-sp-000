class Author < ActiveRecord::Base
  validates :name, presence: true #makes sure that author's name is not blank
  validates :email, presence: true, uniqueness: true #makes sure that email is not blank and also unique 
end
