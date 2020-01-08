class CategoryValidator < ActiveModel::Validator

  def validate(record)
    unless record.category.match?('Fiction' || 'Non-Fiction')
      record.errors[:category] << "You are only allowed to specify 'Fiction' or 'Non-Fiction'"
    end
  end
end
