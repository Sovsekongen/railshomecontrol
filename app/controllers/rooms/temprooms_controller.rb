class Rooms::TemproomsController < ApiBaseController
  skip_before_action :verify_authenticity_token

  def index
    if !params[:dateOne].nil? && !params[:dateTwo].nil?
      temp_room = Temproom.where(rec: (params[:dateOne]..params[:dateTwo])).all
    else
      temp_room = Temproom.all
    end

    render json: temp_room
  end

  def create
    #render json: params[temproom_params].inspect
    new = Temproom.new(temproom_params)
    if new.save
      render :json => new
    else
      error_message("could not create new temproom object.", 406)
    end
  end

  private
    def temproom_params
      params.require(:temproom).permit(:rec, :val, :name, :valH)
    end
end
