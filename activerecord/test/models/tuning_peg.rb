# frozen_string_literal: true

require 'models/application_record'
class TuningPeg < ApplicationRecord
  belongs_to :guitar
  validates_numericality_of :pitch
end
