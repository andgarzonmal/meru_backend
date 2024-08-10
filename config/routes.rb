Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :products
end

# e240c12a28f3bca8d4a0f7f0d8e2ff658206175bc1e7644f8502b9c9a3a54ecee71e94b966e3900210d860bfb48e19ac91a2ad42e69a2358657d47a6eb2655fe