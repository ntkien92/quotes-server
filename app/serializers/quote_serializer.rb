class QuoteSerializer < ActiveModel::Serializer
  attributes :message, :image, :author
end
