Rails.application.routes.draw do
  get 'warehouse/index'

  get 'welcome/index'

  get 'warehouse/add_item'
  post 'warehouse/save_item', as: 'items'
  get 'warehouse/show_all', as: 'items_show_all'
  get 'warehouse/item_details/:id', to: 'warehouse#get_details', as: 'item_details'
  get 'warehouse/delete_item/:id', to: 'warehouse#delete_item', as: 'delete_item'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
