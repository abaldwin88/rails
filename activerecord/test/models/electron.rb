# frozen_string_literal: true

require 'models/application_record'
class Electron < ApplicationRecord
  belongs_to :molecule

  validates_presence_of :name
end
