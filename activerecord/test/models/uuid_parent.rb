# frozen_string_literal: true

require 'models/application_record'
class UuidParent < ApplicationRecord
  has_many :uuid_children
end
