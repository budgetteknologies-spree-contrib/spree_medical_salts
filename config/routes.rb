Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :medical_salts
    resources :products, only: [] do
      get :medical_salts, on: :member
      put :update_medical_salts, on: :member
      # resources :medical_salts do
      #   collection do
      #     post :update_positions
      #   end
      # end
    end
  end
  namespace :api, defaults: { format: 'json' } do
    resources :medical_salts, only: [:index]
  end
end
