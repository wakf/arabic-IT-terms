class TranslationsController < ApplicationController

  def index
    @terms = Term.includes(:translations).all
  end

  def show
    
  end
  
end
