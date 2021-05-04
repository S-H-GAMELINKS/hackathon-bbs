class Dashboard::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(resource)
    super(resource)
    dashboard_root_path
  end
end