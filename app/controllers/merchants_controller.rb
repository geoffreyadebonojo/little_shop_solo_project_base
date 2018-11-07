class MerchantsController < ApplicationController
  def index
    if current_admin?
      @merchants = User.where(role: :merchant).order(:name)
    else
      @merchants = User.where(role: :merchant, active: true).order(:name)
    end
    @top_sellers = User.top_item_selling_merch_for_month(11, 5)
    @top_fulfillers = User.top_item_selling_merch_for_month(11, 5)

    if current_user
      @fastest_to_state = User.fastest_to_my_state(current_user.state).uniq
      @fastest_to_city = User.fastest_to_my_city(current_user.city).uniq
    end
  end

  def show
    render file: 'errors/not_found', status: 404 unless current_user

    @merchant = User.find(params[:id])
    if current_admin?
      @orders = current_user.merchant_orders
      if @merchant.user?
        redirect_to user_path(@merchant)
      end
    elsif current_user != @merchant
      render file: 'errors/not_found', status: 404
    end
  end
end
