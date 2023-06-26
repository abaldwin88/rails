# frozen_string_literal: true

require 'models/application_record'

class Toy < ApplicationRecord
  self.primary_key = :toy_id
  belongs_to :pet

  has_many :sponsors, as: :sponsorable, inverse_of: :sponsorable

  scope :with_pet, -> { joins(:pet) }
end
