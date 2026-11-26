# frozen_string_literal: true

class ModuleManagerSettingsController < ApplicationController
  layout 'admin'
  menu_item :module_manager

  before_action :require_login
  before_action :authorize_global

  def index
    @all_modules = Redmine::AccessControl.available_project_modules
    @modules = params[:ids] || @all_modules
  end

  def update
    all_target_modules = params[:all_modules] || []
    all_target_projects = params[:all_projects] || []

    if all_target_modules.present? && all_target_projects.present?
      enabled_modules_map = params[:enabled_module] || {}

      Project.where(id: all_target_projects).find_each do |project|
        selected_for_project = enabled_modules_map[project.id.to_s] || []

        all_target_modules.each do |m|
          if selected_for_project.include?(m)
            project.enable_module!(m) unless project.module_enabled?(m)
          else
            project.disable_module!(m) if project.module_enabled?(m)
          end
        end
      end

      flash[:notice] = l(:notice_successful_update)
    end

    redirect_to module_manager_path
  end
end
