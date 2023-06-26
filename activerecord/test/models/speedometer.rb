# frozen_string_literal: true

require 'models/application_record'
class Speedometer < ApplicationRecord
  self.primary_key = :speedometer_id
  belongs_to :dashboard

  has_many :minivans
end
