# frozen_string_literal: true

require 'models/application_record'
class Keyboard < ApplicationRecord
  self.primary_key = "key_number"
end
