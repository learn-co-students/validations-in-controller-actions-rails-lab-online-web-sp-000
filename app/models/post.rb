class Post < ActiveRecord::Base
    validates :name, presence: true
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}#in argument makes use of a Range.%w(foo bar) is a shortcut for ["foo", "bar"] . Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them
    validates :content, length: {minimum: 100}
end
