# frozen_string_literal: true

require 'models/application_record'
class LegacyThing < ApplicationRecord
  self.locking_column = :version
end
