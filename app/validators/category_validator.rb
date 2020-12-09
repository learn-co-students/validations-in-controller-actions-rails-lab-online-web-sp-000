class CategoryValidator < ActiveModel::Validator
    def validate(record)
        if record.category == nil
            record.errors[:category] << "Invalid Category"
        end
    end
end
