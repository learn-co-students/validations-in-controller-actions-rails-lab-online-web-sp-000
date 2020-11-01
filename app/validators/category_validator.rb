
class CategoryValidator < ActiveModel::Validator
    def validate(record)
        choices = ["Fiction", "Non-Fiction"]
        #choices.include?(record.category)
        #some how this chocies.include? thing doesn't work, i dont know what the record.category thing looks like
        #is record a hash? whati s it????
        unless record.category == "Fiction" || record.category == "Non-Fiction"
            record.errors[:category] << "Category must be \"Fiction\" or \"Non-Fiction\""
        end
    end

end
