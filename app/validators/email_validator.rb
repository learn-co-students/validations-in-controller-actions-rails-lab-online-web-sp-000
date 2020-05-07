class EmailValidator < ActiveModel::Validator 
    def validate(record)
        unless record.email.include?('@') 
            record.errors[:email] << "Invalid Email"
        end 
    end
end