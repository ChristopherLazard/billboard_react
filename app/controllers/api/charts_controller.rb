class Api::ChartsController < ApplicationController
  before_action :set_chart, only: [:index]
end

def index
  render json: Chart.all
end 

def create
  chart = Chart.new(chart_params)
  if chart.save
    render json: chart
  else 
    render json: { errors: chart.errors }, status: 422  
end

def update
  @chart.update(conplete: !@chart.complete)
  render json: @chart
end
end

def destroy
  @chart.destroy
end

private

 def set_chart
  @chart = Chart.find(params[:id])
 end 

 def chart_params
  params.require(:chart.permit(:name))
  end
end