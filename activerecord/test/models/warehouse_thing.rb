# frozen_string_literal: true

require 'models/application_record'
class WarehouseThing < ApplicationRecord
  self.table_name = "warehouse-things"

  validates_uniqueness_of :value
end
