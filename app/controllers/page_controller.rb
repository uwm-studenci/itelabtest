class PageController < ApplicationController
  def index
  	@user = User.joins(:products).find(1)
  	@product = Product.find(1)
  end
end
