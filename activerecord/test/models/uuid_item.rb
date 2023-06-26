# frozen_string_literal: true

require 'models/application_record'
class UuidItem < ApplicationRecord
end

class UuidValidatingItem < UuidItem
  validates_uniqueness_of :uuid
end
