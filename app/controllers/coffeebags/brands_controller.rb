class Coffeebags::BrandsController < ApiBaseController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /brands
  # GET /brands.json
  def index
    brand = Brand.all

    render json: brand
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
    jsonresponse = Brand.find(params[:id])
    render json: jsonresponse
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  # POST /brands.json
  def create
    new = Brand.new(brand_params)
    if new.save
      render json: new
    else
      error_message("could not create new brand object.", 406)
    end
  end

  # PATCH/PUT /brands/1
  # PATCH/PUT /brands/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: 'Brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: 'Brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_params
      params.permit(:id, :name)
    end
end
