# frozen_string_literal: true

require 'models/application_record'
class UuidChild < ApplicationRecord
  belongs_to :uuid_parent
end
