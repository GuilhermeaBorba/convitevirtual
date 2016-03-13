class ConvidadosController < ApplicationController
  #before_action :set_convidado, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
      belongs_to :user
      has_many :convites

  # GET /convidados
  # GET /convidados.json
  def index
    @convidados = Convidado.all
  end

  # GET /convidados/1
  # GET /convidados/1.json
  def show
  end

  # GET /convidados/new
  def new
    @convidado = Convidado.new
  end

  # GET /convidados/1/edit
  def edit
  end

  # POST /convidados
  # POST /convidados.json
  def create
    @convidado = Convidado.new(convidado_params)

    respond_to do |format|
      if @convidado.save
        format.html { redirect_to @convidado, notice: 'Convidado was successfully created.' }
        format.json { render :show, status: :created, location: @convidado }
      else
        format.html { render :new }
        format.json { render json: @convidado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convidados/1
  # PATCH/PUT /convidados/1.json
  def update
    respond_to do |format|
      if @convidado.update(convidado_params)
        format.html { redirect_to @convidado, notice: 'Convidado was successfully updated.' }
        format.json { render :show, status: :ok, location: @convidado }
      else
        format.html { render :edit }
        format.json { render json: @convidado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convidados/1
  # DELETE /convidados/1.json
  def destroy
    @convidado.destroy
    respond_to do |format|
      format.html { redirect_to convidados_url, notice: 'Convidado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convidado
      @convidado = Convidado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convidado_params
      params.require(:convidado).permit(:name, :email)
    end
end
