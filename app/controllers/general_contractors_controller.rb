require 'pry'
class GeneralContractorsController < ApplicationController
  set default_content_type: 'application/json'

  get '/general_contractors'do
    GeneralContractor.all.to_json
  end 

  # POST: create account
  post "/general_contractors" do
    new_gc = GeneralContractor.create(
      company_name: params[:company_name],
      address: params[:address],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    session[:id] = new_gc.id
    new_gc.to_json
  end

end
