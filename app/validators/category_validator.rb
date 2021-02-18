class CategoryValidator < ActiveModel::Validator
  def validate(record)
    unless record.category == "Fiction" || record.category == "Non-Fiction"
      record.errors[:category] << "Please choose 'Fiction' or 'Non-Fiction' for your category."
    end
  end
end
