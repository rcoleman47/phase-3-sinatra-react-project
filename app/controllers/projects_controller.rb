class ProjectsController < ApplicationController

  # GET: /projects
  get "/projects" do
    Project.all.to_json
  end

  # POST: /projects
  post "/projects" do
    new_project = Project.create(
      title: params[:title],
      location: params[:location],
      description: params[:description],
      sector: params[:sector],
      phase: params[:phase],
      size: params[:size],
      duration: params[:duration],
      total_cost: params[:total_cost],
      start_date: params[:start_date],
      general_contractor_id: params[:general_contractor_id]
    )
    new_project.to_json
  end

  # GET: 
  get "/projects/:id" do
    Project.find(params[:id]).to_json
  end

  # PATCH: 
  patch "/projects/:id" do
    project = Project.find(params[:id]).update(
      title: params[:title],
      location: params[:location],
      description: params[:description],
      sector: params[:sector],
      phase: params[:phase],
      size: params[:size],
      duration: params[:duration],
      start_date: params[:start_date]
    )
    project.to_json
  end

  # DELETE: 
  delete "/projects/:id" do
   project = Project.find(params[:id]).destroy
   project.to_json
  end
end
