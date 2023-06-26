# frozen_string_literal: true

require 'models/application_record'
class StringKeyObject < ApplicationRecord
  self.primary_key = :id
end
