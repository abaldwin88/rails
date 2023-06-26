# frozen_string_literal: true

require 'models/application_record'
class TooLongTableName < ApplicationRecord
  self.table_name = "toooooooooooooooooooooooooooooooooo_long_table_names"
end
