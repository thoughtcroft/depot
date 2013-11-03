class StoreController < ApplicationController
  def index
    @time = Time.now.strftime("%F %H:%M")
    @products = Product.order(:title)
  end
end
