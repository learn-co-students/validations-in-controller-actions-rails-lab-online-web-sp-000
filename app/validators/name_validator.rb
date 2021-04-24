class NameValidator < ActiveModel::Validator

  def validate(record)
    unless record.name != nil
      record.errors[:name] << "Need to add A Name"
    end
  end
end
