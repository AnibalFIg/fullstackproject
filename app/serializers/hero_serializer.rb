class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :eye_color, :race, :hair_color, :height, :publisher, :skin_color, :alignment, :weight
end
