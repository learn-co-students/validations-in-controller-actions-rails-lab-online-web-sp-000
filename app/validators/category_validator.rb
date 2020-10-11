class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.split.size < 2
        end
    end
end