# frozen_string_literal: true

require 'models/application_record'
class DlKeyedHasOne < ApplicationRecord
  self.primary_key = "has_one_key"
end
