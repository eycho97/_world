class Article < ActiveRecord::Base
    has_many :categories

    scope :alphabetical, order('title')
    scope :active, where('active = ?', true)

    validates_presence_of :content, :title
end
