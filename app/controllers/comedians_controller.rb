class ComediansController < ApplicationController

  def index
    @comedians = Comedian.where(query_params)
    @average_age = @comedians.average(:age)
    @average_runtime = Special.average_runtime(@comedians.ids)
    @cities = @comedians.all_cities
  end

  def new
    @comedian = Comedian.new
  end

  def create
    @comedian = Comedian.new(comedian_params)
    @comedian.update(thumbnail: "https://financemd.files.wordpress.com/2015/08/facebook-default-no-profile-pic.jpg")
    if @comedian.save
      redirect_to comedians_path
    else
      render :new
    end
  end

  private

  def comedian_params
    params.require(:comedian).permit(:name, :age, :city)
  end

  def query_params
    params.permit(:name, :age, :city)
  end
end
