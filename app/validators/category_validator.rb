class CategoryValidator < ActiveModel::Validator
  def validate(record)
    #binding.pry
    unless record.category == "Fiction" || record.category == "Non-Fiction"
      record.errors[:category] << "Please enter Fiction or Non-Fiction only."
    end
  end
end
