module TranslationsHelper

  def voted_for_term?(term)
    cookies[:votings].present? && cookies[:votings].include?(term.id.to_s)
  end

end
