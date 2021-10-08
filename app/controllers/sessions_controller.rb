class SessionsController < ApplicationController

    def new
       
    end

    def create
      
        if  params[:name].blank?
            redirect_to '/login'
        elsif
            
            session[:name] = params[:name]
            redirect_to '/'
       
        else
            
            session.nil? || session.empty?
            
           
            redirect_to '/login'
        end
        

    end

    def destroy

        session.delete :name
        redirect_to '/login'
    end


end