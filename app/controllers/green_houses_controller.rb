class GreenHousesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_green_house, only: %i[ show edit update destroy ]

  # GET /green_houses or /green_houses.json
  def index
    @green_houses = GreenHouse.all
  end

  # GET /green_houses/1 or /green_houses/1.json
  def show
  end

  # GET /green_houses/new
  def new
    @green_house = GreenHouse.new
  end

  # GET /green_houses/1/edit
  def edit
  end

  # POST /green_houses or /green_houses.json
  def create
    @green_house = GreenHouse.new(green_house_params)

    respond_to do |format|
      if @green_house.save
        format.html { redirect_to @green_house, notice: "Green house was successfully created." }
        format.json { render :show, status: :created, location: @green_house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @green_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /green_houses/1 or /green_houses/1.json
  def update
    respond_to do |format|
      if @green_house.update(green_house_params)
        format.html { redirect_to @green_house, notice: "Green house was successfully updated." }
        format.json { render :show, status: :ok, location: @green_house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @green_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /green_houses/1 or /green_houses/1.json
  def destroy
    @green_house.destroy
    respond_to do |format|
      format.html { redirect_to green_houses_url, notice: "Green house was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_green_house
      @green_house = GreenHouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def green_house_params
      params.require(:green_house).permit(:code_greenhouse, :area_grooves, :status, :agricultural_companies_id)
    end
end
