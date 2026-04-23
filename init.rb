PLUGIN_NAME = 'module_manager'

# rubocop:disable Style/FrozenStringLiteralComment
# ActiveSupport::Dependencies.explicitly_unloadable_constants = PLUGIN_NAME if Rails.env.development?
# rubocop:enable Style/FrozenStringLiteralComment

require 'redmine'

Redmine::Plugin.register(PLUGIN_NAME.to_sym) do
  name 'Module manager plugin'
  author 'Arean Narrayan'
  description 'Mass enable/disable project modules across all projects'
  version '0.0.2'
  url 'https://github.com/Arean82/module_manager'
  author_url 'https://github.com/Arean82/module_manager'

  # PERMISSION - This will appear in Roles & Permissions
  permission :manage_project_modules_globally, {
    module_manager_settings: [:index, :update]
  }, require: :loggedin

  # MENU - Adds link in Administration menu
  menu :admin_menu, :module_manager,
       { controller: 'module_manager_settings', action: :index },
       caption: 'Global Module Manager',
       html: { class: 'icon icon-modules' }

  # Settings (optional - remove if not using plugin settings page)
  settings default: {empty: false},
           partial: PLUGIN_NAME + '/settings/index'
end

# Fix for Zeitwerk autoloader
if Rails.configuration.respond_to?(:autoloader) && Rails.configuration.autoloader == :zeitwerk
  Rails.autoloaders.each {|loader| loader.ignore("#{File.dirname(__FILE__)}/lib")}
end

require "#{File.dirname(__FILE__)}/lib/#{PLUGIN_NAME}"