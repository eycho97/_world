class Article < ActiveRecord::Base
    belongs_to :categories

    scope :alphabetical, order('title')
    scope :active, where('active = ?', true)

    validates_presence_of :content, :title
end
