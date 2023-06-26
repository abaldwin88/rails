# frozen_string_literal: true

require 'models/application_record'
class PriceEstimate < ApplicationRecord
  include ActiveSupport::NumberHelper

  belongs_to :estimate_of, polymorphic: true
  belongs_to :thing, polymorphic: true

  validates_numericality_of :price

  def price
    number_to_currency super
  end
end
