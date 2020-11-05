class Post < ActiveRecord::Base
    validates :title, presence: true
    include ActiveModel::Validations
    validates_with CategoryValidator
    validates :content, length: { minimum: 100 }

    # Another way to validate only "Fiction" || "Non-Fiction" categories
    # validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
