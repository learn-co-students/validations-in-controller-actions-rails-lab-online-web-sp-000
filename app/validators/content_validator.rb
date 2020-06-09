class ContentValidator < ActiveModel::Validator 

    def validate(record)
        unless record.content.length >= 100 
            record.errors[:content] << "The content must be at least 100 characters long."
        end
    end

end