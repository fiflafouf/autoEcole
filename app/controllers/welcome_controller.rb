class WelcomeController < ApplicationController
  before_action :set_formule, only: [:show]

  # GET /formules
  # GET /formules.json
  def index
    @formules = Formule.all
  end
  
  # GET /formules/1
  # GET /formules/1.json
  def show
  end
end
