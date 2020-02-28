class CategoryValidator < ActiveModel::Validator
    def validate(record)
      unless record.category.match?(/Fiction/)
        record.errors[:category] << "We're only allowed to have people who work for the company in the database!"
      end
    end
  end