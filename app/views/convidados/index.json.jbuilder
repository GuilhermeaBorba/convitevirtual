json.array!(@convidados) do |convidado|
  json.extract! convidado, :id, :name, :email
  json.url convidado_url(convidado, format: :json)
end
