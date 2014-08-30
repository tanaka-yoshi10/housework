class RecepisController < ApplicationController
  before_action :set_recepi, only: [:show, :edit, :update, :destroy]

  # GET /recepis
  # GET /recepis.json
  def index
    @recepis = Recepi.all
  end

  # GET /recepis/1
  # GET /recepis/1.json
  def show
  end

  # GET /recepis/new
  def new
    @recepi = Recepi.new
  end

  # GET /recepis/1/edit
  def edit
  end

  # POST /recepis
  # POST /recepis.json
  def create
    @recepi = Recepi.new(recepi_params)

    respond_to do |format|
      if @recepi.save
        format.html { redirect_to @recepi, notice: 'Recepi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recepi }
      else
        format.html { render action: 'new' }
        format.json { render json: @recepi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepis/1
  # PATCH/PUT /recepis/1.json
  def update
    respond_to do |format|
      if @recepi.update(recepi_params)
        format.html { redirect_to @recepi, notice: 'Recepi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recepi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepis/1
  # DELETE /recepis/1.json
  def destroy
    @recepi.destroy
    respond_to do |format|
      format.html { redirect_to recepis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepi
      @recepi = Recepi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepi_params
      params.require(:recepi).permit(:memo)
    end
end
