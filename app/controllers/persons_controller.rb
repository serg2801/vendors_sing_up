class PersonsController < ApplicationController
  def profile
   @user = User.find(current_user.id)
   @board_user = @user.board
  end
end
