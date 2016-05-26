class TradesController < ApplicationController

  def edit
    @user = User.find(current_user.id)
    @trade = @user.trade
  end

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    @categories = params[:trade][:category_ids]
    @channels = params[:trade][:channel_ids]
    @options = params[:trade][:option_ids]

    if @categories.nil?
      flash[:warning] = "Please, indicate the options that describe your business!"
      render 'new'
    elsif @channels.nil?
      flash[:warning] = "Please, indicate what categories would you like to see on Tandem Arbor!"
      render 'new'
    elsif @options.nil?
      flash[:warning] = "Please, indicate What channel(s) do you currently sell through!"
      render 'new'
    else
      @categories.each do |category|
        @category = Category.find(category)
        @trade.categories << @category
      end

      @channels.each do |channel|
        @channel = Channel.find(channel)
        @trade.channels << @channel
      end

      @options.each do |option|
        @option = Option.find(option)
        @trade.options << @option
      end

      if @trade.save
        TradeMailer.signup_confirmation(@trade).deliver
        TradeMailer.send_confirmation(@trade).deliver
        redirect_to vendor_success_path
      else
        render 'new'
      end
    end
  end

  def update
    @user = User.find(current_user.id)
    @trade = @user.trade
    if @trade.update_attributes(trade_params)
      TradeMailer.update_trade(@trade).deliver
      redirect_to trade_success_update_path
    else
      render :edit
    end
  end

  private
  def trade_params
    params.require(:trade).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url_my, :web_site, :information, :image)
  end


end
