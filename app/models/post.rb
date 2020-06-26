class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: {in: ["Non-Fiction", "Fiction"]}
    # include ActiveModel::Validations
    # validates_with PostValidator
    validates(:content, { :length => { :minimum => 100 } })
end
