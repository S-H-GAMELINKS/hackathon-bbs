class Room < ApplicationRecord
    belongs_to :user
    has_many :messages
    has_rich_text :content
    broadcasts_to ->(room) { :rooms }
end
