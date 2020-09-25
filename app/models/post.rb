class CategoryValidator < ActiveModel::Validator
    
    def validate(record)
            if record.category == "Fiction" || record.category == "Non-Fiction"
            true
            else
                record.errors[:base] << "Must be either Fiction or Non-Fiction"
            end
        end
  end

 
class Post < ActiveRecord::Base
    validates_with CategoryValidator
    validates :title, presence: true
    validates :category, presence: true
    validates :content, presence: true
    validates :content, length: { minimum: 10 }
    validates :category, length: { maximum: 11 }
 

end
