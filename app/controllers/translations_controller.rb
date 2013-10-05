class TranslationsController < ApplicationController
before_action :set_translation, only: [:vote_up]
  def index
    @terms = Term.includes(:translations).all
  end

  def show
    
  end
  
  def vote_up
    if @translation.votes
      @translation.votes += 1
    else
      @translation.votes = 0
    end
    @translation.save
    redirect_to terms_path
  end
  private

    def set_translation
      @translation = Translation.find(params[:id])
    end

end
