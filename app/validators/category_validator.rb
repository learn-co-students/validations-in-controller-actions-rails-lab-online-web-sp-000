class CategoryValidator < ActiveModel::Validator 

    def validate(record)
        unless record.category.match?(/Fiction/) || record.category.match?(/Non-Fiction/)
            record.errors[:cateogry] << "The category must be either Fiction or Non-Fiction"
        end
    end

end