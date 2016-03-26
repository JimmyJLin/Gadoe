class SessionsController < ApplicationController

  def create
  user = User.find_by(username: params[:username])

  if user && user.authenticate(params[:password]) && user.employee_type == "Chef"
      session[:current_user_id] = user.id
      redirect_to chefs_path
    elsif user && user.authenticate(params[:password]) && user.employee_type == "Server"
      session[:current_user_id] = user.id
      redirect_to server_path
    elsif user && user.authenticate(params[:password]) && user.employee_type == "Admin"
      session[:current_user_id] = user.id
      redirect_to admin_path
    end
end

def destroy
  session[:current_user_id] = nil
  redirect_to root_path
end

end
