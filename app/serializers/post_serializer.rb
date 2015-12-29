class PostSerializer < ActiveModel::Serializer
  attributes :title, :description, :link_url
end
