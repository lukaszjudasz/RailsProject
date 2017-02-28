Rails.application.routes.draw do
  get 'categories/index'

  get 'warehouse/index'

  get 'welcome/index'

  get 'warehouse/add_item', as: 'add_item'
  post 'warehouse/save_item', as: 'create_item'
  get 'warehouse/show_all', as: 'show_all_items'
  get 'warehouse/item_details/:id', to: 'warehouse#get_details', as: 'get_item'
  get 'warehouse/delete_item/:id', to: 'warehouse#delete_item', as: 'delete_item'
  patch 'warehouse/item_details/:id', to: 'warehouse#modify_item', as: 'modify_item'

  resources :categories

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
