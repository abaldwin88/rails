# frozen_string_literal: true

require 'models/application_record'
class Mentor < ApplicationRecord
  has_many :developers
end
