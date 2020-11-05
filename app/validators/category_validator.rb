class CategoryValidator < ActiveModel::Validator
  def validate(record)
    unless record.category == "Fiction" || record.category == "Non-Fiction"
      record.errors[:category] << "We're only allowed to have Fiction or Non-Fiction!"
    end
  end
end