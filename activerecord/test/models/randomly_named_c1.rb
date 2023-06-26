# frozen_string_literal: true

require 'models/application_record'
class ClassNameThatDoesNotFollowCONVENTIONS < ApplicationRecord
  self.table_name = :randomly_named_table1
end
