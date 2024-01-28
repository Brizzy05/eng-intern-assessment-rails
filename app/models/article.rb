class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true, length: { minimum: 10 }

    def self.search(search_term)
        where("title LIKE ? OR content LIKE ?", "%#{search_term}%", "%#{search_term}%")
    end
end
