class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :name, length: { minimum: 2}
    validates :email, presence: true
    validates :email, length: {minimum: 5}
    validates :email, uniqueness: true
end
