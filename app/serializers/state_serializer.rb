class StateSerializer < ActiveModel::Serializer
  has_many :districts
  embed :ids
  attributes :id, :state_name
end
