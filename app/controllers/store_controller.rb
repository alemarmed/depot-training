class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    if session[:counter].nil?
      session[:counter] = 1
    end
    session[:counter] += 1
    @nr_visits = session[:counter]
    @products = Product.order(:title)
  end
end
