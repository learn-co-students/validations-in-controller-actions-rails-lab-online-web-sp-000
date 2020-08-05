#class Post < ActiveRecord::Base
#    include ActiveModel::Validations
#    validates :title, presence: true
#    validates :content, lenghth: {minimum: 100}
#    validates_with CategoryValidator
#end

class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  end
