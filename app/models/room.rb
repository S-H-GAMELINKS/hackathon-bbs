class Room < ApplicationRecord
    belongs_to :user
    has_many :messages
    has_rich_text :content
    broadcasts_to ->(room) { :rooms }

    validates :name, presence: true, length: { maximum: 30 }
    validates :content, presence: true
end
