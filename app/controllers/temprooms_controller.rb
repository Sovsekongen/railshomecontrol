class TemproomsController < ApplicationController
  before_action :set_temproom
  skip_before_action :verify_authenticity_token

  # GET /temprooms
  # GET /temprooms.json
  def index
    if !params[:dateOne].nil? && !params[:dateTwo].nil?
      temproom = Temproom.where(rec: (params[:dateOne]..params[:dateTwo])).all
    else
      temproom = Temproom.all
    end

    render json: temproom
  end

  # POST /temprooms
  # POST /temprooms.json
  def create
    render json: Temproom.new(temproom_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temproom
      @temproom = Temproom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temproom_params
      params.require(:temproom).permit(:rec, :val, :name, :valH, :dateOne, :dateTwo)
    end
end
