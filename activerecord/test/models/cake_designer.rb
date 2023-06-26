# frozen_string_literal: true

require 'models/application_record'
class CakeDesigner < ApplicationRecord
  has_one :chef, as: :employable
end
