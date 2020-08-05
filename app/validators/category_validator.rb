class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.match("Fiction" || "Non-Fiction")
            record.errors[:category] << "Invalid Category, please choose either Fiction or Non-Fiction for your category."
        end
    end
end