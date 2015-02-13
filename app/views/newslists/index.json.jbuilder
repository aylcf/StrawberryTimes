json.array!(@newslists) do |newslist|
  json.extract! newslist, :id, :title, :posttime, :content, :image
  json.url newslist_url(newslist, format: :json)
end
