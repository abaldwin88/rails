# frozen_string_literal: true

require 'models/application_record'
class UuidEntry < ApplicationRecord
  delegated_type :entryable, types: %w[ UuidMessage UuidComment ], primary_key: :uuid, foreign_key: :entryable_uuid
end
