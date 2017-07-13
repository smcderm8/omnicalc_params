Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action =>"flex_square" })
  
  get("/flexible/square/root/:a_number", { :controller => "calculations", :action =>"flex_square_root" })
  
  get("/flexible/payment/:interest_rate/:years/:principal", { :controller => "calculations", :action =>"flex_payment" })
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
