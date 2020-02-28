class Rooms::TempbathsController < ApplicationController
  before_action :set_tempbath, only: [:show, :edit, :update, :destroy]

  # GET /tempbaths
  # GET /tempbaths.json
  def index
    @tempbaths = Tempbath.all
  end

  # GET /tempbaths/1
  # GET /tempbaths/1.json
  def show
  end

  # GET /tempbaths/new
  def new
    @tempbath = Tempbath.new
  end

  # GET /tempbaths/1/edit
  def edit
  end

  # POST /tempbaths
  # POST /tempbaths.json
  def create
    @tempbath = Tempbath.new(tempbath_params)

    respond_to do |format|
      if @tempbath.save
        format.html { redirect_to @tempbath, notice: 'Tempbath was successfully created.' }
        format.json { render :show, status: :created, location: @tempbath }
      else
        format.html { render :new }
        format.json { render json: @tempbath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempbaths/1
  # PATCH/PUT /tempbaths/1.json
  def update
    respond_to do |format|
      if @tempbath.update(tempbath_params)
        format.html { redirect_to @tempbath, notice: 'Tempbath was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempbath }
      else
        format.html { render :edit }
        format.json { render json: @tempbath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempbaths/1
  # DELETE /tempbaths/1.json
  def destroy
    @tempbath.destroy
    respond_to do |format|
      format.html { redirect_to tempbaths_url, notice: 'Tempbath was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempbath
      @tempbath = Tempbath.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tempbath_params
      params.require(:tempbath).permit(:rec, :val, :valH, :name)
    end
end
