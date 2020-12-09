class Post < ActiveRecord::Base
    validates :title, presence: true
    validates(:content, { :length => { :minimum => 100 } })
    validates(:content, { :length => { :maximum => 5000 } })
    validates :category, presence: true
    validates(:category, { :length => { :minimum =>1}})
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates_with CategoryValidator
end
