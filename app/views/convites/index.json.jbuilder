json.array!(@convites) do |convite|
  json.extract! convite, :id, :anfitriao, :anos, :dataevento, :horainicio, :horafinal
  json.url convite_url(convite, format: :json)
end
