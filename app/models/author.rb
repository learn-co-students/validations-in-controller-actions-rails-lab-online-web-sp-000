class Author < ActiveRecord::Base
    validates :name, uniqueness: true, presence: true
    validates :email, uniqueness: true
end
