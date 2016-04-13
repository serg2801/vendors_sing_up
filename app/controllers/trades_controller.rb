class TradesController < ApplicationController

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    @categories = params[:trade][:category_ids]
    @channels = params[:trade][:channel_ids]
    @options = params[:trade][:option_ids]

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
      redirect_to vendor_path, notice: "Successfully!!!"
    else
      render 'new'
    end
  end

  private
  def trade_params
    params.require(:trade).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url_my, :web_site, :information)
  end


end
