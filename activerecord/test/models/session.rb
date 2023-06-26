# frozen_string_literal: true

require 'models/application_record'
class Session < ApplicationRecord
  has_many :sections, inverse_of: :session, autosave: true, dependent: :destroy
  has_many :seminars, through: :sections
end
