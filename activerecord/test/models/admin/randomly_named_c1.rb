# frozen_string_literal: true

require 'models/application_record'
class Admin::ClassNameThatDoesNotFollowCONVENTIONS1 < ApplicationRecord
  self.table_name = :randomly_named_table2
end

require 'models/application_record'
class Admin::ClassNameThatDoesNotFollowCONVENTIONS2 < ApplicationRecord
  self.table_name = :randomly_named_table3
end
