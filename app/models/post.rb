class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: {in: %w(Fiction Non-Fiction) }
    validates :content, length: {minimum: 100}

    #def fiction_nonfiction?
        #category_type == "Fiction" || "Non=Fiction"
    #end

end
