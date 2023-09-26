Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "square" })

  get("/square/new", { :controller => "pages", :action => "square" })
  get("/square/results", { :controller => "pages", :action => "square_result" })

  get("/square_root/new", { :controller => "pages", :action => "square_root" })
  get("/square_root/results", { :controller => "pages", :action => "square_root_result" })
end
