class PersonsController < ApplicationController
  def profile
   @user = User.find(current_user.id)
   @board_user = @user.board
   @trade_user = @user.trade
  end

  def upload_vendor_agreement_new
    @information_trade = InformationTrade.new
  end

  def upload_vendor_agreement_create
    @user = User.find(current_user.id)
    @trade = Trade.where(user_id: @user.id)
    if params[:information_trade].nil?
      @information_trade = InformationTrade.new
      # flash[:warning] = "Please, upload a PDF!"
      render 'upload_vendor_agreement_new'
    else
      @information_trade = InformationTrade.new(vendor_agreement: params[:information_trade]['vendor_agreement'].tempfile, trade_id: @trade.first.id)
      @information_trade.save
      redirect_to upload_vendor_agreement_success_path
    end
  end

end
