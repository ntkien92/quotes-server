class RabbitSerializer < ActiveModel::Serializer
  attributes :title, :content, :link_url
end
