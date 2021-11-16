class RoutesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :create, :update ]
  skip_before_action :authenticate_user!, only: [ :create, :update ]
  
  before_action :set_route, only: %i[ show edit update destroy ]

  # GET /routes or /routes.json
  def index
    @routes = Route.all
  end



  # GET /routes/1 or /routes/1.json
  def show
  end

  def previous
    Route.where(["id < ?", id]).order(:id).last
  end
  
  def next
    Route.where(["id > ?", id]).order(:id).first
  end


  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end


  # POST /routes or /routes.json
  def create
    device = Device.where(name: params[:route][:device_name]).first
    params[:route].delete :device_name

    p params
    @route = Route.new(route_params)
    @route.device = device

    respond_to do |format|
      if @route.save
        format.html { redirect_to @route, notice: "Route was successfully created." }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1 or /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: "Route was successfully updated." }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1 or /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: "Route was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def route_params
      params.require(:route).permit(:device_name,:routedate, :image,
        paths_attributes: [:lat, :lng, :sensor, :velocity]
      )
    end
end

