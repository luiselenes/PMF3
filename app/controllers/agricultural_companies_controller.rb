class AgriculturalCompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_agricultural_company, only: %i[ show edit update destroy ]

  # GET /agricultural_companies or /agricultural_companies.json
  def index
    @agricultural_companies = AgriculturalCompany.all
  end

  # GET /agricultural_companies/1 or /agricultural_companies/1.json
  def show
    
  end

  # GET /agricultural_companies/new
  def new
    @agricultural_company = AgriculturalCompany.new
  end

  # GET /agricultural_companies/1/edit
  def edit
  end

  # POST /agricultural_companies or /agricultural_companies.json
  def create
    @agricultural_company = AgriculturalCompany.new(agricultural_company_params)

    respond_to do |format|
      if @agricultural_company.save
        format.html { redirect_to @agricultural_company, notice: "Agricultural company was successfully created." }
        format.json { render :show, status: :created, location: @agricultural_company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agricultural_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agricultural_companies/1 or /agricultural_companies/1.json
  def update
    respond_to do |format|
      if @agricultural_company.update(agricultural_company_params)
        format.html { redirect_to @agricultural_company, notice: "Agricultural company was successfully updated." }
        format.json { render :show, status: :ok, location: @agricultural_company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agricultural_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agricultural_companies/1 or /agricultural_companies/1.json
  def destroy
    @agricultural_company.destroy
    respond_to do |format|
      format.html { redirect_to agricultural_companies_url, notice: "Agricultural company was successfully destroyed." }
      format.json { head :no_content }
    end
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
