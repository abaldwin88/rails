# frozen_string_literal: true

require 'models/application_record'
class Zine < ApplicationRecord
  has_many :interests, inverse_of: :zine
end
