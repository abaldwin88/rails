# frozen_string_literal: true

require 'models/application_record'
class Department < ApplicationRecord
  has_many :chefs
  belongs_to :hotel
end
