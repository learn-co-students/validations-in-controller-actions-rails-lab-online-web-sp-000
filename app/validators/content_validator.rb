class ContentValidator < ActiveModel::Validator

  def validate(record)
    unless record.content.empty? == false
      record.errors[:content] << "Some Content Is Needed"
    end
  end
end
