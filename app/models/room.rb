class Room < ApplicationRecord
    belongs_to :user
    has_many :messages
    broadcasts
    broadcasts_to ->(room) { :rooms }
end
