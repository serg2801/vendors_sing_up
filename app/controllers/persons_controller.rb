class PersonsController < ApplicationController
  def profile
   @user = User.find(current_user.id)
   @board_user = @user.board
   @trade_user = @user.trade
  end
end
