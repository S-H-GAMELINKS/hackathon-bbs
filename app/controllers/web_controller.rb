class WebController < ApplicationController
  def index
    @recently_rooms = Room.last(9)
    @hot_rooms = Room.left_joins(:messages).group(:id).order('COUNT(messages.id) DESC').last(9)
  end
end
