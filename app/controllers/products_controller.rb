class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end
 def show
  end
  def create
	@product = Product.new(products_params)

	if @product.save
		redirect_to :action => :index
	else
		render :new
	end
  end

  def edit
  end

  def show
  respond_to do |format|
  format.html # show.html.erb
  format.xml { render :xml => @product.to_xml }
  end
end


def update
    respond_to do |format|
      if @product.update(products_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
 def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Products was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  	def products_params
  		params.require(:product).permit(:name, :user_id)
  	end

    def set_product
      @product = Product.find(params[:id])
    end
end

   
