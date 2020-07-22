class TopsController < ApplicationController
  def index
  	if user_signed_in?
      @shops = Shop.all
    elsif shop_signed_in?
      @users = User.all
    end
  end
end
