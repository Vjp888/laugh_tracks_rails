class ComediansController < ApplicationController

  def index
    @comedians = Comedian.all
    @average_age = Comedian.average(:age)
    @average_runtime = Special.average(:length)
    @cities = @comedians.select(:city).distinct
  end
end
