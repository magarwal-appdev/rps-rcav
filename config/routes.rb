Rails.application.routes.draw do
  
  get("/",{ :controller => "gameindex", :action => "index_page" })
  
  get("/rock",{ :controller => "rgame", :action => "user_plays_rock" })
  
  get("/paper", { :controller => "pgame", :action => "user_plays_paper" }) 
  
  get("/scissors", { :controller => "sgame", :action => "user_plays_scissors" })
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
