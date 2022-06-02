class SessionsController < ApplicationController
  set default_content_type: 'application/json'

  post '/sessions' do 
   gc = GeneralContractor.find_by(email: params[:email])
   gc_confirm = GeneralContractor.find_by(password_digest: params[:password_digest])
   if gc_confirm == gc
    gc.to_json
   else
    "401"
   end
  end

  delete '/logout' do
    session.clear
  end

end