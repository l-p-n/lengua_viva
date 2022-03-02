class Video < Resource
  def url_id
    url.split("?v=")[1]
  end
end
