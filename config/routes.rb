Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "square" })

  get("/square/new", { :controller => "pages", :action => "square" })
  get("/square/results", { :controller => "pages", :action => "square_result" })

  get("/square_root/new", { :controller => "pages", :action => "square_root" })
  get("/square_root/results", { :controller => "pages", :action => "square_root_result" })

  get("/payment/new", { :controller => "pages", :action => "payment" })
  get("/payment/results", { :controller => "pages", :action => "payment_result" })

  get("/random/new", { :controller => "pages", :action => "random" })
  get("/random/results", { :controller => "pages", :action => "random_result" })
end
