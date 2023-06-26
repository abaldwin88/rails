# frozen_string_literal: true

require 'models/application_record'
class Aircraft < ApplicationRecord
  self.pluralize_table_names = false
  has_many :engines, foreign_key: "car_id"
  has_many :wheels, as: :wheelable
end
