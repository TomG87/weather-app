Rails.application.routes.draw do
get "/temperatures" => "temperatures#index"
get "/forecasts" => "temperatures#forecast"
end
