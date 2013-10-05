class TranslationsController < ApplicationController

  def index
    @terms = Term.includes(:translations).all
  end

end
