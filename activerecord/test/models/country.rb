# frozen_string_literal: true

require 'models/application_record'
class Country < ApplicationRecord
  has_and_belongs_to_many :treaties
end
