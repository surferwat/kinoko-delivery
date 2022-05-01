class ProductsController < ApplicationController
    before_action   :require_user_logged_in, :get_company

    def index
    end
    
    def new
        @product = Product.new
    end

    def edit 
        @product = Product.find(params[:id])
    end

    def create
        @product = @company.products.create(product_params)
        if @product.save 
            redirect_to product_path(@product), notice: "Successfully added product"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @product = Product.find(params[:id])
    end

    private

    def product_params
        params.require(:product).permit(
            :name, 
            :description, 
            :kind, 
            :prefecture_of_origin, 
            :price, 
            :items_per_unit, 
            :weight_per_unit
        )
    end

    def get_company
        if params[:company_id]
            @company = Current.user.companies.find(params[:company_id])
        end
    end
end
