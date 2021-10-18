class Api::AgriculturalCompanyController < ApplicationController
    before_action :set_agricultural_company, only: [:show, :update, :destroy]

    # GET /agricultural_companies
    def index
      @agricultural_companies = AgriculturalCompany.all
  
      render json: @agricultural_companies
    end
  
    # GET /agricultural_companies/1
    def show
      render json: @agricultural_company
    end
  
    # POST /agricultural_companies
    def create
      @agricultural_company = AgriculturalCompany.new(agricultural_company_params)
  
      if @agricultural_company.save
        render json: @agricultural_company, status: :created, location: @agricultural_company
      else
        render json: @agricultural_company.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /agricultural_companies/1
    def update
      if @agricultural_company.update(agricultural_company_params)
        render json: @agricultural_company
      else
        render json: @agricultural_company.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /agricultural_companies/1
    def destroy
      @agricultural_company.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_agricultural_company
        @agricultural_company = AgriculturalCompany.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def agricultural_company_params
        params.require(:agricultural_company).permit(:name, :address, :phone, :responsable)
      end
end
