# frozen_string_literal: true

require 'models/application_record'
class DlKeyedHasMany < ApplicationRecord
  self.primary_key = "many_key"
end
