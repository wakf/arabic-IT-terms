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
    if @translation.save
      add_term_to_cookies
      redirect_to terms_path, flash: { notice: 'Voted successfully.' }
    else
      redirect_to terms_path, flash: { error: 'Counld not voted successfully.' }
    end
  end

  private

    def set_translation
      @translation = Translation.find(params[:id])
    end

    def add_term_to_cookies
      cookies[:votings] = '' if cookies[:votings].blank?
      cookies[:votings] = {
        :value => cookies[:votings] + @translation.term_id.to_s,
        :expires => 20.years.from_now.utc,
        :domian => 'arabic-to-english-it.herokuapp.com'
      }
    end
end
