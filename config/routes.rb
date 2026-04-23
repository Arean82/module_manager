# frozen_string_literal: true

get 'admin/module_manager', to: 'module_manager_settings#index', as: 'module_manager'
post 'admin/module_manager/update', to: 'module_manager_settings#update', as: 'module_manager_update'