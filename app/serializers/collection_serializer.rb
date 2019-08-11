class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :collection_name, :user_id, :description
  has_many :items
  
end
