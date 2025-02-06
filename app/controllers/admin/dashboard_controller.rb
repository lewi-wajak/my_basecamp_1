class Admin::DashboardController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in
  before_action :authorize_admin # Restrict access to admins

  def index
    @users = User.all # Fetch all users
  end

  def promote
    user = User.find(params[:id])
    user.add_role(:admin) unless user.has_role?(:admin)
    redirect_to admin_dashboard_path, notice: "#{user.email} has been promoted to Admin."
  end

  def demote
    user = User.find(params[:id])
    user.remove_role(:admin) if user.has_role?(:admin)
    redirect_to admin_dashboard_path, alert: "#{user.email} has been demoted to Regular User."
  end

  private

  def authorize_admin
    redirect_to root_path, alert: "Access denied!" unless current_user.has_role?(:admin)
  end
end
