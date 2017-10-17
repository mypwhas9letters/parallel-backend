class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username

  has_many :parking_spots

end

# ActiveModel::Serilaizer
