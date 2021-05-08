class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_rich_text :content
  broadcasts_to :room
end
