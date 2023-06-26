# frozen_string_literal: true

require 'models/application_record'
class Recipe < ApplicationRecord
  belongs_to :chef
end
