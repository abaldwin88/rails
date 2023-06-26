# frozen_string_literal: true

require 'models/application_record'
class Translation < ApplicationRecord
  belongs_to :attachment, optional: true

  validates :locale, presence: true
  validates :key, presence: true
  validates :value, presence: true
end
