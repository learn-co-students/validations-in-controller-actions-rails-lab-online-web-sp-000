class TitleValidator < ActiveModel::Validator 
    def validate(record)
        if record.title.empty?
            record.errors[:title] << "The title cannot be blank"
        end
    end 

end 