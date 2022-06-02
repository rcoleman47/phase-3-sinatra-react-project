class SessionsController < ApplicationController
  set default_content_type: 'application/json'

  post '/sessions' do 
   gc = GeneralContractor.find_by(email: params[:email])
    if gc && gc.authenticate(params[:password])
      session[:id] = gc.id
      gc.to_json
    else 
      puts "Invalid email or password"
    end
  end

  delete '/logout' do
    session.clear
  end

end