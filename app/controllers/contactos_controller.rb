class ContactosController < ApplicationController
  before_action :set_contacto, only: [:show, :update, :destroy]

  # GET /contactos
  # GET /contactos.json
  def index
    @contactos = Contacto.all 

    render json: @contactos
  end

  # GET /contactos/1
  # GET /contactos/1.json
  def show
    render json: @contacto
  end

  # POST /contactos
  # POST /contactos.json
  def create
    @contacto = Contacto.new(contacto_params)

    if @contacto.save
      render json: @contacto, status: :created, location: @contacto
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contactos/1
  # PATCH/PUT /contactos/1.json
  def update
    @contacto = Contacto.find(params[:id])

    if @contacto.update(contacto_params)
      head :no_content
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contactos/1
  # DELETE /contactos/1.json
  def destroy
    @contacto.destroy

    head :no_content
  end

  private

    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    def contacto_params
      params.require(:contacto).permit(:nombre, :correo, :edad)
    end
end
