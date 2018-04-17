Rails.application.routes.draw do
  namespace :api, { format: 'json'} do
    namespace :v1 do
      # standard day
      namespace :standard do
        get "/", :action => "index"
        get "/specify", :action =>"show"
      end
      # saturday
      namespace :sat do
        get "/", :action => "index"
        get "/specify", :action =>"show"
      end
      # sunday or holiday
      namespace :sun do
        get "/", :action => "index"
        get "/specify", :action =>"show"
      end
    end
  end
  get '*path', controller: 'application', action: 'render_404'
end
