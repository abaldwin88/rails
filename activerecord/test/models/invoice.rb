# frozen_string_literal: true

require 'models/application_record'
class Invoice < ApplicationRecord
  has_many :line_items, autosave: true
  has_many :shipping_lines, -> { from("shipping_lines") }, autosave: true
  before_save { |record| record.balance = record.line_items.map(&:amount).compact.sum }
end
