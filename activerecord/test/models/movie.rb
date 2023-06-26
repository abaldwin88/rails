# frozen_string_literal: true

require 'models/application_record'
class Movie < ApplicationRecord
  self.primary_key = "movieid"

  validates_presence_of :name
end
