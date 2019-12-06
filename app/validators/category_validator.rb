class CategoryValidator < ActiveModel::Validator
  
  def validate(name) 
    if name.category != "Fiction" && name.category != "Non-Fiction"
      name.errors[:category] << "Needs to be either Fiction or Non-Fiction"
    end
  end
  
end