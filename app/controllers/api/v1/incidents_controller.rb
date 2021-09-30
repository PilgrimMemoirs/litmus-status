class Api::V1::IncidentsController < ActionController::API
  before_action :find_incident, only: [:show, :update, :destroy]

  def index
    render json: Incident.all
  end

  def show
    render json: @incident
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      render json: @incident
    else
      render json: { error: 'Unable to create incident.'}, status: 400
    end

  end

  def update
    if @incident
      @incident.update(incident_params)
      render json: { message: 'Incident successfully updated.' }, status: 200
    else
      render json: { error: 'unable to update incident' }, status: 400
    end
  end

  def destroy
    if @incident
      @incident.destroy
      render json: { message: 'Incident successfully deleted.' }, status: 200
    else
      render json: { error: 'unable to update incident' }, status: 400
    end
  end

  private

  def incident_params
    params.require(:incident).permit(:title, :description, :impact, :date_occured)
  end

  def find_incident
    @incident = Incident.find(params[:id])
  end

end
