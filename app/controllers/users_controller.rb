class UsersController < ApplicationController
  before_action :set_user, only: :show
  before_action :authenticate_user!, only: %i[mypage]

  def show

  end

  def mypage
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
end
