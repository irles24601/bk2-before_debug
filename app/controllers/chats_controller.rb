class ChatsController < ApplicationController

  before_action :authenticate_user!, only: [:create]

  def show
  end

  def create
    if UserRoom.where(user_id: current_user.id, room_id: params[:chat][:room_id]).present?
      @chat = Chat.create(params.require(:chat).permit(:user_id, :content, :room_id).merge(user_id: current_user.id))
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
  end
end
