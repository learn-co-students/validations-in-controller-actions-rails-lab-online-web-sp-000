class Author < ActiveRecord::Base
  validates :name, presence: true
<<<<<<< HEAD
  validates :email, uniqueness: true
=======
    validates :email, uniqueness: true, length: { minimum: 2}
>>>>>>> 0211cc36776688e84d5a33b31b2c5e8c2632cfc6
end
