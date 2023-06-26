# frozen_string_literal: true

require 'models/application_record'
class Squeak < ApplicationRecord
  belongs_to :mouse
  accepts_nested_attributes_for :mouse
end
