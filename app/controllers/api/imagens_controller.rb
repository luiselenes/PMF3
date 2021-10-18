class Api::ImagensController < ApplicationController
  skip_before_action :verify_authenticity_token 
  before_action :set_imagen, only: [:show, :update, :destroy]

  # GET /imagens
  def index
    @imagens = Imagen.all

    render json: @imagens
  end

  # GET /imagens/1
  def show
    render json: @imagen
  end

  # POST /imagens
  def create
    @imagen = Imagen.new(imagen_params)

    if @imagen.save
      render json: @imagen, status: :created, location: @imagen
    else
      render json: @imagen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /imagens/1
  def update
    if @imagen.update(imagen_params)
      render json: @imagen
    else
      render json: @imagen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /imagens/1
  def destroy
    @imagen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagen
      @imagen = Imagen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagen_params
      params.require(:imagen).permit(:des,:img)
    end
end
