# frozen_string_literal: true

require 'models/application_record'
class PetTreasure < ApplicationRecord
  self.table_name = "pets_treasures"

  belongs_to :pet
  belongs_to :treasure
end
