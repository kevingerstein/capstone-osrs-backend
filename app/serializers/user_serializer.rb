class UserSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :email, :profile_picture
  has_many :equipment_sets
end
