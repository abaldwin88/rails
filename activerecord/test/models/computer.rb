# frozen_string_literal: true

require 'models/application_record'
class Computer < ApplicationRecord
  belongs_to :developer, foreign_key: "developer"
end
