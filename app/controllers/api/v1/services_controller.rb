class Api::V1::ServicesController < ActionController::API
  def index
    render json: Service.all
  end

  def show
    service = Service.find(params[:id])
    render json: service
  end
end
