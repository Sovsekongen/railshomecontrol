class Rooms::TempkitchensController < ApplicationController
  before_action :set_tempkitchen, only: [:show, :edit, :update, :destroy]

  # GET /tempkitchens
  # GET /tempkitchens.json
  def index
    @tempkitchens = Tempkitchen.all
  end

  # GET /tempkitchens/1
  # GET /tempkitchens/1.json
  def show
  end

  # GET /tempkitchens/new
  def new
    @tempkitchen = Tempkitchen.new
  end

  # GET /tempkitchens/1/edit
  def edit
  end

  # POST /tempkitchens
  # POST /tempkitchens.json
  def create
    @tempkitchen = Tempkitchen.new(tempkitchen_params)

    respond_to do |format|
      if @tempkitchen.save
        format.html { redirect_to @tempkitchen, notice: 'Tempkitchen was successfully created.' }
        format.json { render :show, status: :created, location: @tempkitchen }
      else
        format.html { render :new }
        format.json { render json: @tempkitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempkitchens/1
  # PATCH/PUT /tempkitchens/1.json
  def update
    respond_to do |format|
      if @tempkitchen.update(tempkitchen_params)
        format.html { redirect_to @tempkitchen, notice: 'Tempkitchen was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempkitchen }
      else
        format.html { render :edit }
        format.json { render json: @tempkitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempkitchens/1
  # DELETE /tempkitchens/1.json
  def destroy
    @tempkitchen.destroy
    respond_to do |format|
      format.html { redirect_to tempkitchens_url, notice: 'Tempkitchen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempkitchen
      @tempkitchen = Tempkitchen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tempkitchen_params
      params.require(:tempkitchen).permit(:rec, :val, :valH, :name)
    end
end
