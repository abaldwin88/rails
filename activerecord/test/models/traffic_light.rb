# frozen_string_literal: true

require 'models/application_record'
class TrafficLight < ApplicationRecord
  serialize :state, type: Array
  serialize :long_state, type: Array
end
