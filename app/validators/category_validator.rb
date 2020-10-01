class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless ["Fiction","Non-Fiction"].include?(record.category)
            record.errors[:category] << "category has to be either fiction, or non-fiction"
        end
    end
end