require 'pry'
class GeneralContractorsController < ApplicationController
  set default_content_type: 'application/json'

  # POST: create account
  post "/general_contractors" do
    gc = GeneralContractor.find_by(email: params[:email])
    if gc 
      "401"
    else
      new_gc = GeneralContractor.create(
        company_name: params[:company_name],
        address: params[:address],
        email: params[:email],
        password_digest: params[:password_digest]
      )
      new_gc.to_json
    end
  end

end
