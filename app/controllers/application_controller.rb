class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  configure do
    set :sessions, true
    set :session_secret, "c8DD09k-44Rbtt6-990HHjkkl"
    set :method_override, true
  end

  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
