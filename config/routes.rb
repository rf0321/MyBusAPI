Rails.application.routes.draw do
  namespace :api, { format: 'json'} do
    namespace :v1 do
      # Weekday has many time of bus. so divide to three time zone
      namespace :weekday do
        namespace :morning do
          get "/", :action => "index"
          get "/specify", :action =>"show"
        end
        namespace :noon do
          get "/", :action => "index"
          get "/specify", :action =>"show"
        end
        namespace :afternoon do
          get "/", :action => "index"
          get "/specify", :action =>"show"
        end
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
  root 'home#index'
end
