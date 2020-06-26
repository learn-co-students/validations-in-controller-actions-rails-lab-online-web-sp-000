class PostValidator < ActiveModel::Validator

    def validate(record)
        unless record.category.match?("Fiction"||"Non-Fiction")
            record.errors[:post] << "Category is not Fiction or Non-Fiction"
        end 
    end 

end 