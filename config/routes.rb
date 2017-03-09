Rails.application.routes.draw do
  get '/query_params_url' => 'pages#query_params_method'
  get '/say_name' => 'pages#query_name'
  get '/guess_number' => 'pages#guessing_game'
  get '/url_segment_parameter/:guess' => 'pages#guessing_game'
  get '/form_params' => 'pages#here_form'
  post '/submit_form' => 'pages#form_goes_here'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
