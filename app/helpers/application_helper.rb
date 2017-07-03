module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def display_user_name
    if (current_user.first_name && current_user.first_name.length != 0)
      current_user.first_name + ' ' + current_user.last_name
    else
      current_user.email
    end
  end
end
