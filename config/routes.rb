Rails.application.routes.draw do

  get 'reviews/create'
	devise_for :customers

	get 'homes/top'
	root 'homes#top'

	get 'homes/about'
	get 'homes/author'

  	resources :customers, only: [:show, :edit, :update, :index] do
	  	member do
		  get 'mypage'
		  get 'unsubscribe'
		  patch 'unsubscribe'
		  get 'thanks'
		end
	end

	resources :posts do
		resources :post_comments, only: [:create, :destroy]
		resource  :favorites, only: [:create, :destroy]
		collection do
		  get 'all'
		  get 'ranking'
		end
	end

	resources :bookmarks, only: [:create, :destroy, :index]


	resources :reviews

end
