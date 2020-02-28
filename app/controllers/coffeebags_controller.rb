class CoffeebagsController < ApplicationController
  before_action :set_coffebag, only: [:show, :edit, :update, :destroy]

  # GET /coffebags
  # GET /coffebags.json
  def index
    @coffeebags = Coffeebag.all
  end

  # GET /coffebags/1
  # GET /coffebags/1.json
  def show
  end

  # GET /coffebags/new
  def new
    @coffeebag = Coffeebag.new
  end

  # GET /coffebags/1/edit
  def edit
  end

  # POST /coffebags
  # POST /coffebags.json
  def create
    @coffeebag = Coffeebag.new(coffebag_params)

    respond_to do |format|
      if @coffeebag.save
        format.html { redirect_to @coffeebag, notice: 'Coffebag was successfully created.' }
        format.json { render :show, status: :created, location: @coffeebag }
      else
        format.html { render :new }
        format.json { render json: @coffeebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffebags/1
  # PATCH/PUT /coffebags/1.json
  def update
    respond_to do |format|
      if @coffeebag.update(coffebag_params)
        format.html { redirect_to @coffeebag, notice: 'Coffebag was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffeebag }
      else
        format.html { render :edit }
        format.json { render json: @coffeebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffebags/1
  # DELETE /coffebags/1.json
  def destroy
    @coffeebag.destroy
    respond_to do |format|
      format.html { redirect_to coffeebags_url, notice: 'Coffebag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffebag
      @coffeebag = Coffeebag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coffebag_params
      params.require(:coffeebag).permit(:name, :id, :price, :rating, :amount, :filter, :size, :timesBought)
    end
end
