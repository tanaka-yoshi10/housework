class HouseWorksController < ApplicationController
  before_action :set_house_work, only: [:show, :edit, :update, :destroy]

  # GET /house_works
  # GET /house_works.json
  def index
    @house_works = HouseWork.all
  end

  # GET /house_works/1
  # GET /house_works/1.json
  def show
  end

  # GET /house_works/new
  def new
    @house_work = HouseWork.new
  end

  # GET /house_works/1/edit
  def edit
  end

  # POST /house_works
  # POST /house_works.json
  def create
    @house_work = HouseWork.new(house_work_params)

    respond_to do |format|
      if @house_work.save
        format.html { redirect_to @house_work, notice: 'House work was successfully created.' }
        format.json { render :show, status: :created, location: @house_work }
      else
        format.html { render :new }
        format.json { render json: @house_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_works/1
  # PATCH/PUT /house_works/1.json
  def update
    respond_to do |format|
      if @house_work.update(house_work_params)
        format.html { redirect_to @house_work, notice: 'House work was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_work }
      else
        format.html { render :edit }
        format.json { render json: @house_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_works/1
  # DELETE /house_works/1.json
  def destroy
    @house_work.destroy
    respond_to do |format|
      format.html { redirect_to house_works_url, notice: 'House work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_work
      @house_work = HouseWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_work_params
      params.require(:house_work).permit(:memo, :name)
    end
end
