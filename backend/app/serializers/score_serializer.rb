class ScoreSerializer < ActiveModel::Serializer
  attributes :value

  belongs_to :user
end
