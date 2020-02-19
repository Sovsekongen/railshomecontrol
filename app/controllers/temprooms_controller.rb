class TemproomsController < ApplicationController
  before_action :set_temproom, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /temprooms
  # GET /temprooms.json
  def index
    if !params[:dateOne].nil? && !params[:dateTwo].nil?
      tempRoom = Temproom.where(rec: (params[:dateOne]..params[:dateTwo])).all
    else
      tempRoom = Temproom.all
    end

    render json: tempRoom
  end

  # GET /temprooms/1
  # GET /temprooms/1.json
  def show
    jsonresponse = Temproom.find(params[:id])
    render json: jsonresponse
  end

  # GET /temprooms/new
  def new
    @temproom = Temproom.new
  end

  # GET /temprooms/1/edit
  def edit
  end

  # POST /temprooms
  # POST /temprooms.json
  def create
    new = Temproom.new(temproom_params)
    if new.save
      render json: new
    else
      render "Shiiiiiiiiiiiiiiiiiiiiit"
    end
  end

  # PATCH/PUT /temprooms/1
  # PATCH/PUT /temprooms/1.json
  def update
    respond_to do |format|
      if @temproom.update(temproom_params)
        format.html { redirect_to @temproom, notice: 'Temproom was successfully updated.' }
        format.json { render :show, status: :ok, location: @temproom }
      else
        format.html { render :edit }
        format.json { render json: @temproom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temprooms/1
  # DELETE /temprooms/1.json
  def destroy
    @temproom.destroy
    respond_to do |format|
      format.html { redirect_to temprooms_url, notice: 'Temproom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temproom
      @temproom = Temproom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temproom_params
      params.permit(:rec, :val, :name, :valH)
    end
end
