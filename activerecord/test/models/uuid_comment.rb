# frozen_string_literal: true

require 'models/application_record'
class UuidComment < ApplicationRecord
  has_one :uuid_entry, as: :entryable
end
