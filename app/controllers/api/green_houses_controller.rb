class Api::GreenHousesController < ApplicationController
    before_action :set_green_house, only: [:show, :update, :destroy]

    # GET /green_houses
    def index
      @green_houses = GreenHouse.all
  
      render json: @green_houses
    end
  
    # GET /green_houses/1
    def show
      render json: @green_house
    end
  
    # POST /green_houses
    def create
      @green_house = GreenHouse.new(green_house_params)
  
      if @green_house.save
        render json: @green_house, status: :created, location: @green_house
      else
        render json: @green_house.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /green_houses/1
    def update
      if @green_house.update(green_house_params)
        render json: @green_house
      else
        render json: @green_house.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /green_houses/1
    def destroy
      @green_house.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_green_house
        @green_house = GreenHouse.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def green_house_params
        params.require(:green_house).permit(:code_greenhouse, :area_grooves, :agricultural_companies_id)
      end
end
