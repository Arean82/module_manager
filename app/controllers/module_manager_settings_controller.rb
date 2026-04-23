# frozen_string_literal: true

class ModuleManagerSettingsController < ApplicationController
  before_action :require_login
  before_action :authorize_global  # This checks the permission

  def index
    @all_modules = Redmine::AccessControl.available_project_modules
    @modules = params[:ids] || @all_modules
  end

  def update
    if params[:enabled_module].present?
      params[:enabled_module].each do |project_id, modules|
        project = Project.find(project_id)

        params[:all_modules].each do |m|
          if modules.include?(m)
            project.enable_module!(m)
          else
            project.disable_module!(m)
          end
        end
      end

      flash[:success] = l(:notice_successful_update)
    end

    redirect_to module_manager_path
  end
end