class BoxesController < ApplicationController
  before_action :require_user_logged_in

  def index
    @boxes = Current.user.boxes

  end

  def new
    @box = Box.new
    @companies = Current.user.companies

    # Company selected by user
    @company = Current.user.companies.find_by_id(box_params[:company_id])
    if @company
      @products = @company.products
    else 
      @products = []
    end
  end

  def show
    @box = Current.user.boxes.find(params[:id])
    p @box
    @company = Current.user.companies.find_by_id(@box.company_id)
    @product = @company.products.find_by_id(@box.product_id)
  end

  def create
    @box = Current.user.boxes.create(box_params)
    if @box.save 
      redirect_to boxes_path, notice: "Successfully created box campaign"
    else
      # Reinitalize variables
      @companies = Current.user.companies
      @products = []
      render :new, status: :unprocessable_entity
    end
  end 

  private 

  def box_params
    params.fetch(:box, {}).permit(
      :company_id, 
      :product_id,
      :units_number,
      :delivery_location,
      :bulk_delivery_fee,
      :single_delivery_fee,
      :ends_at
    )
  end
end
