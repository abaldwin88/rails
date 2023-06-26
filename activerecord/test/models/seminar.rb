# frozen_string_literal: true

require 'models/application_record'
class Seminar < ApplicationRecord
  has_many :sections, inverse_of: :seminar, autosave: true, dependent: :destroy
  has_many :sessions, through: :sections
end
