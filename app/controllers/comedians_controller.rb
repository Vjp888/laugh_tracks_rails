class ComediansController < ApplicationController

  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @average_age = @comedians.average(:age)
    @average_runtime = Special.where(comedian_id: @comedians.ids).average(:length).round(2)
    @cities = @comedians.select(:city).distinct
  end
end
