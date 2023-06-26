# frozen_string_literal: true

require 'models/application_record'
class Mouse < ApplicationRecord
  has_many :squeaks, autosave: true
  validates :name, presence: true
end
