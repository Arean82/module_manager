
PLUGIN_NAME = 'module_manager'

# rubocop:disable Style/FrozenStringLiteralComment
# ActiveSupport::Dependencies.explicitly_unloadable_constants = PLUGIN_NAME if Rails.env.development?
# rubocop:enable Style/FrozenStringLiteralComment

require 'redmine'

Redmine::Plugin.register(PLUGIN_NAME.to_sym) do
  name 'Module manager plugin'
  author 'RK team'
  description 'Module manager plugin plugin for redmine'
  version '0.0.2'
  url 'https://github.com/Arean82/module_manager'
  author_url 'https://github.com/Arean82/module_manager'

  settings default: {empty: false},
           partial: PLUGIN_NAME + '/settings/index'

end

# rubocop:disable Style/IfUnlessModifier
if Rails.configuration.respond_to?(:autoloader) && Rails.configuration.autoloader == :zeitwerk
  Rails.autoloaders.each {|loader| loader.ignore("#{File.dirname(__FILE__)}/lib")}
end
# rubocop:enable Style/IfUnlessModifier

require "#{File.dirname(__FILE__)}/lib/#{PLUGIN_NAME}"
