class Author < ActiveRecord::Base
    #=> name cannot be blank
    validates :name, :email, presence: true
    #=> email has to be unique
    validates :email, uniqueness: true
 
end
