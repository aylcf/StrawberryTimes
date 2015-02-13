json.array!(@alliance_gardens) do |alliance_garden|
  json.extract! alliance_garden, :id, :title, :content, :manager, :mobile, :phone, :address
  json.url alliance_garden_url(alliance_garden, format: :json)
end
