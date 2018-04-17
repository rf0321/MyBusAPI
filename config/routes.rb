Rails.application.routes.draw do
  namespace :api, { format: 'json'} do
    namespace :v1 do
      # standard day
      namespace :standard do
        get "/", :action => "index"
        get "/sepa", :action =>"show"
      end
      # saturday
      namespace :sat do
        get "/", :action => "index"
        get "/sepa", :action =>"show"
      end
      # sunday or holiday
      namespace :sun do
        get "/", :action => "index"
        get "/sepa", :action =>"show"
      end
    end
  end
end
