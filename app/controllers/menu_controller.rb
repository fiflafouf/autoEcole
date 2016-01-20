class MenuController < ApplicationController
   def index
      
       respond_to do |format|
           format.html {render :index}
           format.json{render json: @menus, status: :ok}
       end
   end
end