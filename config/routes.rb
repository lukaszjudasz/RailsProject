Rails.application.routes.draw do
  get 'warehouse/index'

  get 'welcome/index'

  get 'warehouse/add_item'
  post 'warehouse/save_item', as: 'items'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
