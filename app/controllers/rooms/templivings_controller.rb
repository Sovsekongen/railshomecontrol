class Rooms::TemplivingsController < ApplicationController
  before_action :set_templiving, only: [:show, :edit, :update, :destroy]

  # GET /templivings
  # GET /templivings.json
  def index
    @templivings = Templiving.all
  end

  # GET /templivings/1
  # GET /templivings/1.json
  def show
  end

  # GET /templivings/new
  def new
    @templiving = Templiving.new
  end

  # GET /templivings/1/edit
  def edit
  end

  # POST /templivings
  # POST /templivings.json
  def create
    @templiving = Templiving.new(templiving_params)

    respond_to do |format|
      if @templiving.save
        format.html { redirect_to @templiving, notice: 'Templiving was successfully created.' }
        format.json { render :show, status: :created, location: @templiving }
      else
        format.html { render :new }
        format.json { render json: @templiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templivings/1
  # PATCH/PUT /templivings/1.json
  def update
    respond_to do |format|
      if @templiving.update(templiving_params)
        format.html { redirect_to @templiving, notice: 'Templiving was successfully updated.' }
        format.json { render :show, status: :ok, location: @templiving }
      else
        format.html { render :edit }
        format.json { render json: @templiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templivings/1
  # DELETE /templivings/1.json
  def destroy
    @templiving.destroy
    respond_to do |format|
      format.html { redirect_to templivings_url, notice: 'Templiving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_templiving
      @templiving = Templiving.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def templiving_params
      params.require(:templiving).permit(:name, :val, :valH, :rec)
    end
end
