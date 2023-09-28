Rails.application.routes.draw do


  get("/", {:controller => "omnicalc", :action => "homepage"})

  get("/square/new", {:controller =>"omnicalc", :action => "lion"})

  get("/square_root/new", {:controller =>"omnicalc", :action => "panther"})

  get("/payment/results", {:controller =>"omnicalc", :action => "giraffe"})

  get("/payment/new", {:controller =>"omnicalc", :action => "parrot"})

  get("/random/results", {:controller =>"omnicalc", :action => "monkey"})

  get("/random/new", {:controller =>"omnicalc", :action => "dog"})


  get("/square/results", {:controller =>"omnicalc", :action =>"eagle"})
  

  get("/square_root/results", {:controller =>"omnicalc", :action =>"tiger"})
end
