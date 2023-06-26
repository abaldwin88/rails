# frozen_string_literal: true

require 'models/application_record'
class ClothingItem < ApplicationRecord
  query_constraints :clothing_type, :color
end

class ClothingItem::Used < ClothingItem
end

class ClothingItem::Sized < ClothingItem
  query_constraints :clothing_type, :color, :size
end
