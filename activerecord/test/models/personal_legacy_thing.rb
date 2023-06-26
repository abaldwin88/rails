# frozen_string_literal: true

require 'models/application_record'
class PersonalLegacyThing < ApplicationRecord
  self.locking_column = :version
  belongs_to :person, counter_cache: true
end
