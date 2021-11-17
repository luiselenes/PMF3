class DevicesController < ApplicationController
  before_action :set_device, only: %i[ show edit update destroy routes route_ind searchdate ]

  # GET /devices or /devices.json
  def index
    @devices = Device.all
  end
  #Search
  def search
    if params[:search].blank?
      redirect_to "/" 
    else
      @parameter = params[:search].downcase
      @results = Device.where("lower(name) LIKE :search", search: "%#{@parameter}%")
        #Cambiar sintaxis de la busqueada
    end
  end
  def redirect
    redirect_to :controller => 'routes', :action => 'show' , :id => params[:id]
  end

  def routes
    @routes = @device.routes
  end

  def route_ind
    p @device.to_json
    @index = params[:route_ind].to_i
    @routes = @device.routes
    @countall = @device.routes.all.count
    @route = @routes[@index]
    render :routes
    
  end
  # GET /devices/1 or /devices/1.json
  def show
  end

    #Searchdate
  def searchdate
    @routes = @device
      .routes
      .where('to_char("routes"."routedate", \'DD-MM-YYYY\') = ?', params[:searchdate])
    if @routes.length == 0
      redirect_back(fallback_location: root_path)
      flash[:message] = "No hay recorridos en la fecha seleccionada"
    else
      @index = params[:route_ind].to_i
      @countall = @routes.length
      @route = @routes[@index]
      render :routesdate
    end
  end 

  def routesdate
    if params[:searchdate].blank?
      redirect_back(fallback_location: root_path)
      flash[:message] = "No seleccionó fecha"
    else   
      redirect_to '/devices/'+params[:id]+'/routedate/'+params[:searchdate].gsub!('/','-')+'/0'
    end
  end
  
  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
  end

  # POST /devices or /devices.json
  def create
    @device = Device.new(device_params)

    respond_to do |format|
      if @device.save
        format.html { redirect_to @device, notice: "Device was successfully created." }
        format.json { render :show, status: :created, location: @device }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devices/1 or /devices/1.json
  def update
    respond_to do |format|
      if @device.update(device_params)
        format.html { redirect_to @device, notice: "Device was successfully updated." }
        format.json { render :show, status: :ok, location: @device }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1 or /devices/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: "Device was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def device_params
      params.require(:device).permit(:name, :capacity, :logicaldelete, :agricultural_company_id)
    end
end

