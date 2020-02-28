class ApiBaseController < ApplicationController

  def error_message(err, code)
    render json: {message: err, code: code}, status: code
  end
end
