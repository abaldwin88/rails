# frozen_string_literal: true

require 'models/application_record'
class Liquid < ApplicationRecord
  self.table_name = :liquid
  has_many :molecules, -> { distinct }
end
