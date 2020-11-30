class CategoryValidator < ActiveModel::Validator
	def validate(record)
		unless record.category == "Fiction" or record.category == "Non-Fiction"
			record.errors[:category] << 'Must be either "Fiction" or "Non-Fiction".'
		end
	end
end