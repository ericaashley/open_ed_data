class SchoolSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :schnam
end
