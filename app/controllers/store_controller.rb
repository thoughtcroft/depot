class StoreController < ApplicationController
  def index
    @time = Time.now.strftime("%F %H:%M")
    @products = Product.order(:title)

    @counter = if session[:counter].nil?

                 session[:counter] = 0
               else
                 session[:counter] += 1
               end
  end
end
