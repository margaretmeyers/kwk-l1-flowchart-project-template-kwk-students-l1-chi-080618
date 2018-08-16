require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  get '/' do
    erb :region
  end
  
  post '/region' do
    region = params[:region]
 
    if region == "South"
      return erb :south

    elsif region == "Midwest"
      return erb :midwest
    
    elsif region == "Westcoast"
      return erb :westcoast
    
    elsif region == "Eastcoast"
      return erb :eastcoast
    
    else
      return "wrong page"
    end
  end
 
 post '/eastcoast_result' do
    
    city = params[:city]
 
    if city == "Boston"
      return erb :boston
      
    elsif city == "Nyc"
      return erb :nyc

    elsif city == "Philladelphia"
      return erb :philladelphia
    
    else
      return "wrong page"
    end
  end
 
 
  post '/midwest_result' do
    
    city = params[:city]
 
    if city == "Chicago"
      return erb :chicago
      
    elsif city == "Detroit"
      return erb :detroit

    elsif city == "Milwaukee"
      return erb :milwaukee
    
    elsif city == "St_Louis"
      return erb :stlouis
    else
      return "wrong page"
    end
  end
  
 
  
  post '/chicago_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :chicago_workout
      
    elsif activity == "breakfast"
      return erb :chicago_breakfast
      
    elsif activity == "shopping"
      return erb :chicago_shopping
    
    elsif activity == "lunch"
      return erb :chicago_lunch
    
    elsif activity == "landmark"
      return erb :chicago_landmark
    
    elsif activity == "entertainment"
      return erb :chicago_entertainment 
    
    elsif activity == "dinner"
      return erb :chicago_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
   post '/boston_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :boston_workout
      
    elsif activity == "breakfast"
      return erb :boston_breakfast
      
    elsif activity == "shopping"
      return erb :boston_shopping
    
    elsif activity == "lunch"
      return erb :boston_lunch
    
    elsif activity == "landmark"
      return erb :boston_landmark
    
    elsif activity == "entertainment"
      return erb :boston_entertainment 
    
    elsif activity == "dinner"
      return erb :boston_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
   post '/philladelphia_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :philladelphia_workout
      
    elsif activity == "breakfast"
      return erb :philladelphia_breakfast
      
    elsif activity == "shopping"
      return erb :philladelphia_shopping
    
    elsif activity == "lunch"
      return erb :philladelphia_lunch
    
    elsif activity == "landmark"
      return erb :philladelphia_landmark
    
    elsif activity == "entertainment"
      return erb :philladelphia_entertainment 
    
    elsif activity == "dinner"
      return erb :philladelphia_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
  
   post '/nyc_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :nyc_workout
      
    elsif activity == "breakfast"
      return erb :nyc_breakfast
      
    elsif activity == "shopping"
      return erb :nyc_shopping
    
    elsif activity == "lunch"
      return erb :nyc_lunch
    
    elsif activity == "landmark"
      return erb :nyc_landmark
    
    elsif activity == "entertainment"
      return erb :nyc_entertainment 
    
    elsif activity == "dinner"
      return erb :nyc_dinner
      
    else 
      return "wrong page"
    end 
  end
end
