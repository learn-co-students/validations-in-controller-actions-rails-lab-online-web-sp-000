class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.match?("Fiction" || "Non-fiction")
            record.errors[:category] << "Please select either Fiction or Non-fiction!"
        end
    end
end
