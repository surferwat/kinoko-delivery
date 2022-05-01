class CompanyController < ApplicationController
    before_action :require_user_logged_in, :get_companies

    def index
    end
    
    def new
        @company = Company.new
    end

    def edit 
        @company = @companies.find(params[:id])
    end

    def show 
        @company = @companies.find(params[:id]) 
        @products = @company.products.all       
    end

    def create
        @company = @companies.create(company_params)
        if @company.save
            redirect_to company_path(@company), notice: "Successfully added company"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update 
        @company = @companies.find(params[:id])
        if @company.update(company_params)
            redirect_to company_path(@company), notice: "Successfully updated company"
        else 
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def company_params
        params.require(:company).permit(
            :name, 
            :url
        )
    end

    def get_companies
        @companies = Current.user.companies
    end
end
