class CountriesController < ApplicationController

  def index
    @countries = Country.all
    if params[:query].present?
      @countries = Country.search_by(params[:query])
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.user = current_user
    # @celebrity.booking = @booking
    if @country.save
      redirect_to country_path(@country)
    end
  end

  def update
    @country = Country.find(params[:id])
    @country.update(countries_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to country_path(@countries)
  end

  def edit
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(id: params[:id])
    @country.destroy
    redirect_to countries_path, status: :see_other
  end

private

  def countries_params
    params.require(:countries).permit(:name, :capital_city, :size, :available_activities, :continent, :price_per_day, :availability_start_date, :availability_end_date, :flag)
  end
end
