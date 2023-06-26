# frozen_string_literal: true

require 'models/application_record'
class Matey < ApplicationRecord
  belongs_to :pirate
  belongs_to :target, class_name: "Pirate"
end
