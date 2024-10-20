module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


  def nav_back
    if request.path.include?("instruments/") && request.path.exclude?("new")
      instruments_path
    elsif request.path.include?("instruments") && request.path.exclude?("new")
      root_path
    elsif request.path.include?("bookings") && request.path.exclude?("_bookings")
      instrument_path(@instrument)
    end
  end
end
