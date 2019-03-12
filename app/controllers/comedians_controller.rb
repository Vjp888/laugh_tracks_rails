class ComediansController < ApplicationController

  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @average_age = Comedian.average(:age)
    @average_runtime = Special.average(:length)
    @cities = @comedians.select(:city).distinct
    # binding.pry
  end
end
