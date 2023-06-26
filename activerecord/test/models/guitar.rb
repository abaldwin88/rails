# frozen_string_literal: true

require 'models/application_record'
class Guitar < ApplicationRecord
  has_many :tuning_pegs, index_errors: true
  accepts_nested_attributes_for :tuning_pegs
end
