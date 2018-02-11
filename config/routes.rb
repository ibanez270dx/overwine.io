Rails.application.routes.draw do

  root to: "application#index"
  post "/contact",     to: "application#contact"
  get  "/sitemap.xml", to: "application#sitemap", format: "xml", as: :sitemap

end
