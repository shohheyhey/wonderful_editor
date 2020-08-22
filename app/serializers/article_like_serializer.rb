class ArticleLikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :article
  has_one :user
end
