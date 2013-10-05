json.array!(@translations) do |translation|
  json.extract! translation, :name, :term_id, :votes
  json.url translation_url(translation, format: :json)
end
