class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.category != nil && record.category.match?("Fiction") || record.category.match?("Non-Fiction")
      record.errors[:category] << "We're only supposed to have Fiction or Non-Fiction Posts"
    end
  end
end
  
 