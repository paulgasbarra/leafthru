
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_reader, :formatted_date_time, :forecast

  def current_reader
    current_user
  end

  def not_authenticated
    redirect_to root_path
  end

  def formatted_date_time(object)
    object.strftime("%B %d, %Y")
  end

  def forecast()
    barometer = Barometer.new('11222')
    weather = barometer.measure
    return weather.current.temperature.f
  end

end
