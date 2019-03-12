class ComediansController < ApplicationController

  def index
    if query_params
      @comedians = Comedian.where(query_params)
    else
      @comedians = Comedian.all
    end
    @average_age = @comedians.average(:age)
    @average_runtime = Special.where(comedian_id: @comedians.ids).average(:length).round(2)
    @cities = @comedians.select(:city).distinct
  end

  private

  def comedian_params
    params.require(:comedian).permit(:name, :age, :city)
  end

  def query_params
    params.permit(:name, :age, :city)
  end
end
