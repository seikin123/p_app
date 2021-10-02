Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'sessions'
  }

  root 'top#index'

  resources :users, only: %i(show edit update) do
    collection do #id付与はしない
      get 'quit' #退会画面
      patch 'out' #is_deletedを更新する
  end
end
end
