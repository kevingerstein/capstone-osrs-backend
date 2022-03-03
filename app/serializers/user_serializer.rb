class UserSerializer < ActiveModel::Serializer
  attributes :id, :display_name
  has_many :equipment_sets
end
