class TitleValidator < ActiveModel::Validator

    def validate(record)
      unless record.title != nil
        record.errors[:title] << "Need to add A Title"
      end
    end
  end