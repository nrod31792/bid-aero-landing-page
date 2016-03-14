json.array!(@landingpages) do |landingpage|
  json.extract! landingpage, :id, :company, :name, :email
  json.url landingpage_url(landingpage, format: :json)
end
